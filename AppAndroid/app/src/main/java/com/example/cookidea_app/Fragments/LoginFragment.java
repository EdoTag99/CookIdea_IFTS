package com.example.cookidea_app.Fragments;

import static com.example.cookidea_app.Activities.CookIdeaApp.apiService;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.renderscript.ScriptGroup;
import android.text.InputType;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import com.example.cookidea_app.Activities.CookIdeaApp;
import com.example.cookidea_app.Activities.MainActivity;
import com.example.cookidea_app.Activities.SharedPrefManager;
import com.example.cookidea_app.Backend.CookIdeaApiEndpointInterface;
import com.example.cookidea_app.Backend.LoginRequest;
import com.example.cookidea_app.ModelClasses.User;
import com.example.cookidea_app.R;
import com.google.gson.JsonObject;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class LoginFragment extends Fragment {

    Context ctx;
    EditText username;
    EditText password;

    ImageButton btnVisibility;
    ImageButton btnVisibilityOff;
    Button loginBtn;

    User user;

    public LoginFragment(){

    }

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        ctx = context;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_login, container, false);

        username = rootView.findViewById(R.id.usernameEditText);
        password = rootView.findViewById(R.id.passwordEditText);
        password.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);
        btnVisibility = rootView.findViewById(R.id.btnVisibility);
        btnVisibilityOff = rootView.findViewById(R.id.btnVisibilityOff);
        loginBtn = rootView.findViewById(R.id.signinButton);



        btnVisibility.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                btnVisibility.setVisibility(View.GONE);
                btnVisibilityOff.setVisibility(View.VISIBLE);
                password.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD);
            }
        });

        btnVisibilityOff.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                btnVisibilityOff.setVisibility(View.GONE);
                btnVisibility.setVisibility(View.VISIBLE);
                password.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);

            }
        });

        loginBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                LoginRequest loginRequest = new LoginRequest();
                loginRequest.setUsername(username.getText().toString());
                loginRequest.setPassword(password.getText().toString());
                Call<User> call = apiService.login(loginRequest);


                call.enqueue(new Callback<User>() {
                    @Override
                    public void onResponse(Call<User> call, Response<User> response) {

                        //if StatusCode = 200
                        if (response.isSuccessful()){
                            user = response.body();
                            ((MainActivity)ctx).onLoginSuccess(user);
                            SharedPrefManager.setLoggedIn(ctx, user, true);
                            ((MainActivity)ctx).updateNavigationDrawer();
                            ((MainActivity)ctx).changeFrameByNavigationTab(R.id.homePage);
                        }else {
                            Toast.makeText(getContext(), "Utente non Trovato", Toast.LENGTH_LONG).show();

                        }
                    }



                    @Override
                    public void onFailure(Call<User> call, Throwable t) {
                        Log.i("Errore login", "Errore API login");
                        // TODO: 02/04/2024 fare apparire messaggio TextView rosso

                    }
                });
            }
        });




        Button button = rootView.findViewById(R.id.signupButton);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                MainActivity activity = (MainActivity) getActivity();
                assert activity != null;

                activity.apriRegistrazione();

            }
        });

        return  rootView;

    }





}
