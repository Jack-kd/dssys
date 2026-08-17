package com.byazt.wf;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.na.a;
import com.byazt.nke.b;
import com.byazt.nke.o;
import com.byazt.nke.u;
import com.byazt.nke.wv;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 416, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    /* renamed from: l, reason: collision with root package name */
    public Context f26889l;

    private hp() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        s.hp().l(str);
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(Context context) {
        if (context == null || this.f26889l != null) {
            return;
        }
        this.f26889l = context.getApplicationContext();
    }

    public void hp(a.l lVar, String str, q qVar) {
        j jVar;
        if (qVar == null) {
            return;
        }
        if (a.hp().jx()) {
            qVar.hp();
            return;
        }
        if (lVar != null && (jVar = lVar.f23430s) != null) {
            String strHp = jVar.hp();
            if (TextUtils.isEmpty(strHp)) {
                qVar.hp();
                return;
            }
            String strJx = s.hp().jx(strHp);
            if (TextUtils.isEmpty(strJx)) {
                qVar.hp();
                return;
            }
            String strHp2 = hp(str);
            if (TextUtils.isEmpty(strHp2)) {
                qVar.hp();
                return;
            } else if (!new File(strJx, strHp2).exists()) {
                qVar.hp();
                return;
            } else {
                hp(strHp, strJx, strHp2, qVar);
                return;
            }
        }
        qVar.hp();
    }

    private String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("http")) {
            return str;
        }
        try {
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            if (!TextUtils.isEmpty(lastPathSegment)) {
                return lastPathSegment;
            }
            int iLastIndexOf = str.lastIndexOf(47);
            return (iLastIndexOf < 0 || iLastIndexOf >= str.length() + (-1)) ? str : str.substring(iLastIndexOf + 1);
        } catch (Exception unused) {
            return str;
        }
    }

    private void hp(final String str, String str2, String str3, final q qVar) {
        ((o) com.byazt.ym.j.getService("local_img_loader")).from(hp(str2, str3)).cacheDir(str2).isLocalRes(true).sync(false).config(Bitmap.Config.ARGB_8888).type(2).to(new b() { // from class: com.byazt.wf.hp.1
            @Override // com.byazt.nke.b
            public void onFailed(int i2, String str4, Throwable th) {
                qVar.hp();
            }

            @Override // com.byazt.nke.b
            public void onSuccess(u uVar) {
                Bitmap bitmap = uVar != null ? (Bitmap) uVar.getResult() : null;
                if (bitmap == null || bitmap.isRecycled()) {
                    qVar.hp();
                } else {
                    hp.this.l(str);
                    qVar.hp(bitmap);
                }
            }
        });
    }

    private static wv hp(final String str, final String str2) {
        return new wv() { // from class: com.byazt.wf.hp.2
            @Override // com.byazt.nke.wv
            public SparseArray<Object> extra() {
                return null;
            }

            @Override // com.byazt.nke.wv
            public String getCacheDir() {
                return str;
            }

            @Override // com.byazt.nke.wv
            public int getMemoryCacheSize() {
                return 1048576;
            }

            @Override // com.byazt.nke.wv
            public String getName() {
                return str2;
            }

            @Override // com.byazt.nke.wv
            public int getRawCacheSize() {
                return 0;
            }
        };
    }
}
