package com.byazt.ymw;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 68, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes3.dex */
public class v {
    public static volatile File hp;

    /* renamed from: l, reason: collision with root package name */
    public static hp f28111l;

    public interface hp {
        String hp();

        String l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(String str, final com.byazt.oxb.hp<Bitmap> hpVar, final int i2) {
        hp hpVar2 = f28111l;
        ((com.byazt.nke.ns) com.byazt.ym.j.getService("img_service")).from(((hpVar2 == null || TextUtils.isEmpty(hpVar2.hp())) ? null : f28111l.hp()) + str).config(Bitmap.Config.ARGB_8888).type(2).to(new com.byazt.nke.b() { // from class: com.byazt.ymw.v.4
            @Override // com.byazt.nke.b
            public void onFailed(int i3, String str2, Throwable th) {
            }

            @Override // com.byazt.nke.b
            public void onSuccess(com.byazt.nke.u uVar) {
                Bitmap bitmap = uVar != null ? (Bitmap) uVar.getResult() : null;
                if (bitmap != null) {
                    v.l(bitmap, (com.byazt.oxb.hp<Bitmap>) hpVar, i2);
                }
            }
        });
    }

    public static void hp(final Context context, final String str, final View view, int i2) {
        hp(context, str, new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.ymw.v.1
            @Override // com.byazt.oxb.hp
            public void hp(final Bitmap bitmap) {
                v.l(new Runnable() { // from class: com.byazt.ymw.v.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            View view2 = view;
                            if (view2 != null) {
                                view2.setBackground(new BitmapDrawable(context.getResources(), bitmap));
                            }
                        } catch (Exception e2) {
                            e2.getMessage();
                        }
                    }
                });
            }
        }, i2);
    }

    public static void hp(final Context context, final String str, final ImageView imageView, int i2) {
        hp(context, str, new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.ymw.v.2
            @Override // com.byazt.oxb.hp
            public void hp(final Bitmap bitmap) {
                v.l(new Runnable() { // from class: com.byazt.ymw.v.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            ImageView imageView2 = imageView;
                            if (imageView2 != null) {
                                imageView2.setImageDrawable(new BitmapDrawable(context.getResources(), bitmap));
                            }
                        } catch (Exception e2) {
                            e2.getMessage();
                        }
                    }
                });
            }
        }, i2);
    }

    public static void hp(Context context, final String str, final com.byazt.oxb.hp<Bitmap> hpVar, final int i2) {
        com.byazt.nke.o oVar = (com.byazt.nke.o) com.byazt.ym.j.getService("local_img_loader");
        File file = !TextUtils.isEmpty(f28111l.l()) ? new File(hp(context), f28111l.l()) : null;
        String absolutePath = file != null ? file.getAbsolutePath() : null;
        oVar.from(hp(absolutePath, com.byazt.qkc.jx.hp(str))).cacheDir(absolutePath).isLocalRes(true).sync(true).config(Bitmap.Config.ARGB_8888).type(2).to(new com.byazt.nke.b() { // from class: com.byazt.ymw.v.3
            @Override // com.byazt.nke.b
            public void onFailed(int i3, String str2, Throwable th) {
                v.l(str, (com.byazt.oxb.hp<Bitmap>) hpVar, i2);
            }

            @Override // com.byazt.nke.b
            public void onSuccess(com.byazt.nke.u uVar) {
                Bitmap bitmap = uVar != null ? (Bitmap) uVar.getResult() : null;
                if (bitmap != null) {
                    v.l(bitmap, (com.byazt.oxb.hp<Bitmap>) hpVar, i2);
                } else {
                    v.l(str, (com.byazt.oxb.hp<Bitmap>) hpVar, i2);
                }
            }
        }, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(final Bitmap bitmap, final com.byazt.oxb.hp<Bitmap> hpVar, final int i2) {
        if (bitmap.isRecycled()) {
            return;
        }
        l(new Runnable() { // from class: com.byazt.ymw.v.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    int i3 = i2;
                    if (i3 >= 160) {
                        bitmap.setDensity(i3);
                    }
                    hpVar.hp(bitmap);
                } catch (Throwable th) {
                    th.getMessage();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            e.l().post(runnable);
        }
    }

    private static com.byazt.nke.wv hp(final String str, final String str2) {
        return new com.byazt.nke.wv() { // from class: com.byazt.ymw.v.6
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
                return 524288;
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

    public static File hp(Context context) {
        if (hp == null) {
            try {
                File file = new File(eb.l(context, false, null), "tt_img_cac");
                file.mkdirs();
                hp = file;
            } catch (Throwable th) {
                u.l("LocalResCacheHelp", th.getMessage());
            }
        }
        return hp;
    }

    public static void hp(hp hpVar) {
        f28111l = hpVar;
    }
}
