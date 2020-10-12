package com.example.inventoria.ui.profil;


import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import com.example.inventoria.R;
import com.example.inventoria.model.User;
import com.example.inventoria.network.response.UserResponse;
import com.example.inventoria.tools.RecyclerItemClickListener;
import com.example.inventoria.tools.SessionManager;
import com.example.inventoria.tools.SimpleDividerItemDecoration;
import com.example.inventoria.tools.Url;
import com.example.inventoria.ui.keluar.search.SearchActivity;
import com.example.inventoria.ui.profil.editor.ProfilActivity;

import com.google.android.material.floatingactionbutton.FloatingActionButton;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

import static android.app.Activity.RESULT_OK;

/**
 * A simple {@link Fragment} subclass.
 */
public class ProfilFragment extends Fragment implements ProfilView {

    SessionManager session;
    ProfilPresenter presenter;
    ProfilAdapter adapter;

    private static final int REQUEST_ADD = 1;
    private static final int REQUEST_UPDATE = 2;

    @BindView(R.id.recycler)
    RecyclerView recyclerView;


    @BindView(R.id.swipe_refresh)
    SwipeRefreshLayout swipe;

    public ProfilFragment() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View x = inflater.inflate(R.layout.fragment_profil, container, false);
        ButterKnife.bind(this, x );
        getActivity().setTitle("Data Profil");

        session = new SessionManager(getActivity());
        presenter = new ProfilPresenter(this);
        presenter.getProfil(session.getKeyId_user());
        setHasOptionsMenu(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        recyclerView.setHasFixedSize(true);
        swipe.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override
            public void onRefresh() {
                presenter.getProfil(session.getKeyId_user());
            }
        });

        return x;
    }



    @Override
    public void showProgress() {
        swipe.setRefreshing(true);
    }

    @Override
    public void hideProgress() {
        swipe.setRefreshing(false);
    }

    @Override
    public void statusSuccess(UserResponse userResponse) {
        adapter = new ProfilAdapter(userResponse.getData(), getActivity());
        recyclerView.setAdapter(adapter);
        recyclerView.addItemDecoration(new SimpleDividerItemDecoration(getActivity()));
        recyclerView.addOnItemTouchListener(new RecyclerItemClickListener(getActivity(),
                new RecyclerItemClickListener.OnItemClickListener() {
                    @Override
                    public void onItemClick(View view, int position) {
                        User user = adapter.getProfil(position);

                        Intent intent = new Intent(getActivity(), ProfilActivity.class);

                        intent.putExtra("id_user", user.getId_user());
                        intent.putExtra("email", user.getEmail());
                        intent.putExtra("username", user.getUsername());
                        intent.putExtra("password", user.getPassword());
                        intent.putExtra("level", user.getLevel());
                        intent.putExtra("nama", user.getNama());
                        intent.putExtra("tgl_lahir", user.getTgl_lahir());
                        intent.putExtra("jenis_kelamin", user.getJenis_kelamin());
                        intent.putExtra("alamat", user.getAlamat());
                        intent.putExtra("no_telp", user.getNo_telp());
                        intent.putExtra("foto", user.getFoto());

                        startActivityForResult(intent, REQUEST_UPDATE);
                    }
                }));
        adapter.notifyDataSetChanged();
    }

    @Override
    public void statusError(String message) {
        Toast.makeText(getActivity(), message, Toast.LENGTH_SHORT).show();
    }

    @OnClick(R.id.fab_profil) void update(){
        Intent intent = new Intent(getActivity(), ProfilActivity.class);

        intent.putExtra("id_user", session.getKeyId_user());
        intent.putExtra("email", session.getKeyEmail());
        intent.putExtra("username", session.getKeyUsername());
        intent.putExtra("password", session.getKeyPassword());
        intent.putExtra("level", session.getKeyLevel());
        intent.putExtra("nama", session.getKeyNama());
        intent.putExtra("tgl_lahir", session.getKeyTgl_lahir());
        intent.putExtra("jenis_kelamin", session.getKeyJenis_kelamin());
        intent.putExtra("alamat", session.getKeyAlamat());
        intent.putExtra("no_telp", session.getKeyNo_telp());
        intent.putExtra("foto", session.getKeyFoto());
        startActivityForResult(intent, REQUEST_UPDATE);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_ADD && resultCode == RESULT_OK) {
            presenter.getProfil(session.getKeyId_user());
        } else if (requestCode == REQUEST_UPDATE && resultCode == RESULT_OK) {
            presenter.getProfil(session.getKeyId_user());
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        presenter.detachView();
    }



    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {

        inflater.inflate(R.menu.main1, menu);
        super.onCreateOptionsMenu(menu,inflater);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {


      if (item.getItemId() == R.id.logout) {

          session.logoutUser();
        }

        return super.onOptionsItemSelected(item);
    }

}
