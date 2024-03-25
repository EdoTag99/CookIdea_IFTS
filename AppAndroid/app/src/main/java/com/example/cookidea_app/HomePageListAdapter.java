package com.example.cookidea_app;

import static com.example.cookidea_app.MainActivity.BASE_URL;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

public class HomePageListAdapter extends ArrayAdapter<String> {

    Context context;
    List<String> categoryNames;
    private List<Bitmap> categoryImages;


    public HomePageListAdapter(Context context, List<String> categoryName, List<Bitmap> categoryImages) {
        super(context, R.layout.home_page_cateogry_list_layout, categoryName);
        this.context = context;
        this.categoryNames = categoryName;
        this.categoryImages = categoryImages;
    }

    private static class CategoryViewHolder{
        TextView textViewVH;
        ImageView imageViewVH;
        Bitmap image;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        CategoryViewHolder categoryViewHolder;

        if (convertView == null) {

            categoryViewHolder = new CategoryViewHolder();
            LayoutInflater inflater = LayoutInflater.from(context);
            convertView = inflater.inflate(R.layout.home_page_cateogry_list_layout, parent, false);
            categoryViewHolder.textViewVH = (TextView) convertView.findViewById(R.id.categoryName);
            categoryViewHolder.imageViewVH = (ImageView) convertView.findViewById(R.id.categoryImage);

            String imgUrl = BASE_URL + "/static/img/" + categoryNames.get(position).toLowerCase() +".png";

            new DownloadImageAsyncTask(categoryViewHolder.imageViewVH, new DownloadImageAsyncTask.ImageDownloadCallback() {
                @Override
                public void downloaded(Bitmap img) {
                    categoryViewHolder.image = img;
                }
            }).execute(imgUrl);


            convertView.setTag(categoryViewHolder);
        } else {
            categoryViewHolder = (CategoryViewHolder) convertView.getTag();
        }

        categoryViewHolder.textViewVH.setText(categoryNames.get(position));
        categoryViewHolder.imageViewVH.setImageBitmap(categoryViewHolder.image);
        return convertView;
    }
}
