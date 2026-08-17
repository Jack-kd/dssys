package com.byazt.vfd;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.byazt.evz.l;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.pu.TTDownloadField;
import com.byazt.uid.eb;
import com.byazt.uid.w;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE, 28})
/* loaded from: classes3.dex */
public class hp {
    public JSONObject hp;

    public String toString() {
        JSONObject jSONObject = this.hp;
        return jSONObject == null ? "" : jSONObject.toString();
    }

    public boolean hp() {
        JSONObject jSONObject = this.hp;
        if (jSONObject != null && jSONObject.optInt("type") > 0) {
            return l.hp((float) this.hp.optDouble("rate"), false);
        }
        return false;
    }

    public static hp hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return hp(new JSONObject(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static hp hp(JSONObject jSONObject) {
        hp hpVar = new hp();
        hpVar.hp = jSONObject;
        return hpVar;
    }

    public void hp(WebView webView, final mp mpVar) {
        View view;
        if (hp() && webView != null) {
            try {
                System.currentTimeMillis();
                if (Build.VERSION.SDK_INT >= 28 && webView.getLayerType() == 2 && (view = (View) webView.getParent()) != null) {
                    int measuredWidth = (int) (view.getMeasuredWidth() * 0.6d);
                    int measuredHeight = (int) (view.getMeasuredHeight() * 0.6d);
                    if (hp(sz.getContext(), measuredWidth, measuredHeight)) {
                        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.RGB_565);
                        view.draw(new Canvas(bitmapCreateBitmap));
                        System.currentTimeMillis();
                        w.l(new eb("") { // from class: com.byazt.vfd.hp.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    try {
                                        System.currentTimeMillis();
                                        hp.this.hp(bitmapCreateBitmap, mpVar);
                                        System.currentTimeMillis();
                                    } catch (Throwable th) {
                                        try {
                                            th.getMessage();
                                            if (bitmapCreateBitmap.isRecycled()) {
                                                return;
                                            }
                                            bitmapCreateBitmap.recycle();
                                        } finally {
                                            try {
                                                if (!bitmapCreateBitmap.isRecycled()) {
                                                    bitmapCreateBitmap.recycle();
                                                }
                                            } catch (Throwable unused) {
                                            }
                                        }
                                    }
                                } catch (Throwable unused2) {
                                }
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Bitmap bitmap, mp mpVar) throws JSONException {
        Matrix matrix = new Matrix();
        matrix.setScale(0.4f, 0.4f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        try {
            bitmap.recycle();
        } catch (Throwable th) {
            th.getMessage();
        }
        float width = bitmapCreateBitmap.getWidth() * bitmapCreateBitmap.getHeight();
        float f2 = 0.0f;
        for (int i2 = 0; i2 < bitmapCreateBitmap.getWidth(); i2++) {
            for (int i3 = 0; i3 < bitmapCreateBitmap.getHeight(); i3++) {
                if (bitmapCreateBitmap.getPixel(i2, i3) == -1) {
                    f2 += 1.0f;
                }
            }
        }
        try {
            bitmapCreateBitmap.recycle();
        } catch (Throwable th2) {
            th2.getMessage();
        }
        if ((f2 / width) * 100.0f > 95.0d) {
            JSONObject jSONObject = new JSONObject();
            if (mpVar != null) {
                jSONObject.put("url", mpVar.s());
                jSONObject.put("ad_id", mpVar.cx());
                jSONObject.put("cid", mpVar.j());
            }
            k.hp().q(jSONObject);
        }
    }

    public boolean hp(Context context, int i2, int i3) {
        ActivityManager.MemoryInfo memoryInfo;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
        } catch (Exception unused) {
        }
        if (memoryInfo.lowMemory) {
            return false;
        }
        return memoryInfo.availMem > Math.max((long) Math.max(((double) memoryInfo.totalMem) * 0.02d, 5.24288E7d), (long) (((float) ((i2 * i3) * 2)) * 2.0f));
    }
}
