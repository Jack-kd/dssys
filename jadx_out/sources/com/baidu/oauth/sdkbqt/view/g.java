package com.baidu.oauth.sdkbqt.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.WindowManager;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.baidu.oauth.sdkbqt.R;

/* loaded from: classes2.dex */
public class g extends Dialog {

    /* renamed from: b, reason: collision with root package name */
    public ListView f11853b;

    /* renamed from: c, reason: collision with root package name */
    public i f11854c;

    public static class a {
    }

    public g(Context context) {
        super(context);
        b();
    }

    public final void b() {
        this.f11854c = new i(getContext());
        requestWindowFeature(1);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawableResource(R.color.bd_oauth_sdk_transparent);
        setContentView(R.layout.layout_bd_oauth_sdk_dialog_list);
        ListView listView = (ListView) findViewById(R.id.sapi_dialog_list_container);
        this.f11853b = listView;
        listView.setAdapter((ListAdapter) this.f11854c);
        this.f11853b.setOnItemClickListener(new b(this));
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.horizontalMargin = 0.1f;
        attributes.height = -2;
        getWindow().setAttributes(attributes);
        getWindow().setBackgroundDrawableResource(R.color.bd_oauth_sdk_transparent);
    }
}
