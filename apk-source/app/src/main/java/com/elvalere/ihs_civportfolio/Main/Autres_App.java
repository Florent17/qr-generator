package com.elvalere.ihs_civportfolio.Main;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import com.elvalere.ihs_civportfolio.R;
import com.facebook.share.widget.LikeView;

/* loaded from: classes.dex */
public class Autres_App extends Activity implements View.OnClickListener {
    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Toast.makeText(this, "Merci !!!", 0).show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.retour_btn /* 2131558572 */:
                startActivity(new Intent(this, (Class<?>) MainActivity.class));
                break;
            case R.id.download_Pharma_btn /* 2131558574 */:
                new AlertDialog.Builder(this).setTitle(" Application -- Pharmacie Garde RCI -- ").setMessage("Aller à la page de téléchargement ?").setNegativeButton(R.string.Cancel, new d(this)).setPositiveButton("Oui", new c(this)).setIcon(android.R.drawable.ic_dialog_alert).show();
                break;
            case R.id.Download_CIE_btn /* 2131558575 */:
                new AlertDialog.Builder(this).setTitle(" Application -- Conso CIE RCI -- ").setMessage("Aller à la page de téléchargement ?").setNegativeButton(R.string.Cancel, new b(this)).setPositiveButton("Oui", new a(this)).setIcon(android.R.drawable.ic_dialog_alert).show();
                break;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.autres_appli);
        com.facebook.t.a(getApplicationContext());
        com.facebook.a.a.a((Context) this);
        LikeView likeView = (LikeView) findViewById(R.id.likeView);
        if (likeView != null) {
            likeView.setLikeViewStyle(com.facebook.share.widget.i.STANDARD);
        }
        if (likeView != null) {
            likeView.setAuxiliaryViewPosition(com.facebook.share.widget.c.INLINE);
        }
        if (likeView != null) {
            likeView.a("@string/facebook_app_like_adresse", com.facebook.share.widget.g.OPEN_GRAPH);
        }
    }
}
