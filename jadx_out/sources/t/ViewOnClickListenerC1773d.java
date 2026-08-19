package t;

import android.view.View;

/* renamed from: t.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class ViewOnClickListenerC1773d implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f52770b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.baidu.oauth.sdkbqt.view.a f52771c;

    public ViewOnClickListenerC1773d(com.baidu.oauth.sdkbqt.view.a aVar, View view) {
        this.f52771c = aVar;
        this.f52770b = view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f52771c.runOnUiThread(new e(this));
    }
}
