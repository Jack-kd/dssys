package com.sigmob.sdk.nativead;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.czhj.sdk.common.utils.Preconditions;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.IntentActions;

/* loaded from: classes4.dex */
public class NativeAdBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static IntentFilter f38291a;

    /* renamed from: b, reason: collision with root package name */
    private InterfaceC1351g f38292b;

    public NativeAdBroadcastReceiver(InterfaceC1351g interfaceC1351g, String str) {
        super(str);
        this.f38292b = interfaceC1351g;
        a();
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public IntentFilter a() {
        if (f38291a == null) {
            IntentFilter intentFilter = new IntentFilter();
            f38291a = intentFilter;
            intentFilter.addAction(IntentActions.ACTION_NATIVE_TEMPLIE_SHOW);
            f38291a.addAction(IntentActions.ACTION_NATIVE_TEMPLE_CLICK);
            f38291a.addAction(IntentActions.ACTION_NATIVE_TEMPLE_DISMISS);
            f38291a.addAction(IntentActions.ACTION_LANDPAGE_SHOW);
            f38291a.addAction(IntentActions.ACTION_LANDPAGE_DISMISS);
        }
        return f38291a;
    }

    @Override // com.sigmob.sdk.base.common.BaseBroadcastReceiver
    public void b(BroadcastReceiver broadcastReceiver) {
        super.b(broadcastReceiver);
        this.f38292b = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(intent);
        if (this.f38292b != null && a(intent)) {
            String action = intent.getAction();
            if (TextUtils.isEmpty(action)) {
                return;
            }
            action.getClass();
            switch (action) {
                case "action.native.temple.dismiss":
                    this.f38292b.i();
                    break;
                case "action.native.temple.click":
                    this.f38292b.h();
                    break;
                case "action.native.temple.show":
                    this.f38292b.g();
                    break;
                case "action.loadpage.show":
                    this.f38292b.a();
                    break;
                case "action.loadpage.dismiss":
                    this.f38292b.b();
                    break;
            }
        }
    }
}
