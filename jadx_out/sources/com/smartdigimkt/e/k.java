package com.smartdigimkt.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.smartdigimkt.sdk.R;

/* loaded from: classes5.dex */
public final class k implements com.smartdigimkt.t3.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f39946a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f39947b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f39948c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Runnable f39949d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f39950e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ l f39951f;

    public k(l lVar, Context context, int i2, i iVar, h hVar, int i3) {
        this.f39951f = lVar;
        this.f39946a = context;
        this.f39947b = i2;
        this.f39948c = iVar;
        this.f39949d = hVar;
        this.f39950e = i3;
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str, Bitmap bitmap) {
        if (this.f39951f.f39952a.getTag(R.id.sdm_bubble_delay_runnable_tag) != this.f39951f.f39953b[0]) {
            return;
        }
        if (bitmap == null || bitmap.isRecycled() || !TextUtils.equals(str, this.f39951f.f39958g)) {
            Context context = this.f39946a;
            l lVar = this.f39951f;
            q.a(context, lVar.f39952a, this.f39947b, this.f39948c, this.f39949d, this.f39950e, lVar.f39953b[0]);
            return;
        }
        if (!q.a(this.f39951f.f39952a)) {
            l lVar2 = this.f39951f;
            q.b(lVar2.f39952a, lVar2.f39953b[0]);
            return;
        }
        Bitmap bitmapCopy = null;
        if (!bitmap.isRecycled()) {
            try {
                Bitmap.Config config = bitmap.getConfig();
                if (config == null) {
                    config = Bitmap.Config.ARGB_8888;
                }
                bitmapCopy = bitmap.copy(config, false);
            } catch (OutOfMemoryError unused) {
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        if (bitmapCopy != null) {
            this.f39951f.f39952a.post(new j(this, bitmapCopy));
            return;
        }
        Context context2 = this.f39946a;
        l lVar3 = this.f39951f;
        q.a(context2, lVar3.f39952a, this.f39947b, this.f39948c, this.f39949d, this.f39950e, lVar3.f39953b[0]);
    }

    @Override // com.smartdigimkt.t3.l
    public final void a(String str) {
        Context context = this.f39946a;
        l lVar = this.f39951f;
        q.a(context, lVar.f39952a, this.f39947b, this.f39948c, this.f39949d, this.f39950e, lVar.f39953b[0]);
    }
}
