package t;

import android.content.Intent;
import android.view.View;

/* renamed from: t.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class ViewOnClickListenerC1772c implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.baidu.oauth.sdkbqt.view.a f52769b;

    public ViewOnClickListenerC1772c(com.baidu.oauth.sdkbqt.view.a aVar) {
        this.f52769b = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent("android.settings.SETTINGS");
        intent.setFlags(270532608);
        this.f52769b.startActivity(intent);
    }
}
