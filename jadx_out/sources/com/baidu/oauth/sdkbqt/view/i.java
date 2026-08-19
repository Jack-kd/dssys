package com.baidu.oauth.sdkbqt.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.baidu.oauth.sdkbqt.R;
import com.baidu.oauth.sdkbqt.view.g;
import java.util.ArrayList;
import java.util.List;
import t.f;

/* loaded from: classes2.dex */
public class i extends BaseAdapter {

    /* renamed from: b, reason: collision with root package name */
    public Context f11855b;

    /* renamed from: c, reason: collision with root package name */
    public List f11856c = new ArrayList();

    public i(Context context) {
        this.f11855b = context;
    }

    public g.a a(int i2) {
        f.a(this.f11856c.get(i2));
        return null;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f11856c.size();
    }

    @Override // android.widget.Adapter
    public /* synthetic */ Object getItem(int i2) {
        a(i2);
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f11855b).inflate(R.layout.layout_bd_oauth_sdk_item_dialog_list, viewGroup, false);
        }
        f.a(this.f11856c.get(i2));
        throw null;
    }
}
