package com.elvalere.ihs_civportfolio.Main;

import android.content.Intent;
import android.view.MenuItem;
import android.widget.PopupMenu;
import com.elvalere.ihs_civportfolio.R;
import com.elvalere.ihs_civportfolio.Site_Tracker_BDD.AddTodoActivity;
import com.elvalere.ihs_civportfolio.Site_Tracker_BDD.TodoListActivity;

/* loaded from: classes.dex */
class ap implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Site_View f319a;

    ap(Site_View site_View) {
        this.f319a = site_View;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.Add_Comment_men /* 2131558677 */:
                Intent intent = new Intent(this.f319a, (Class<?>) AddTodoActivity.class);
                intent.putExtra("SiteID1_1", this.f319a.j);
                intent.putExtra("SiteName1_1", this.f319a.k);
                this.f319a.startActivity(intent);
                break;
            case R.id.View_Comments_men /* 2131558678 */:
                this.f319a.startActivity(new Intent(this.f319a, (Class<?>) TodoListActivity.class));
                break;
        }
        return true;
    }
}
