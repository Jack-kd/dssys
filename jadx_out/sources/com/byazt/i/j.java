package com.byazt.i;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.ip.q;
import com.byazt.t.jl;
import com.byazt.y.jx;
import com.byazt.y.zy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.BufferedInputStream;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, 38})
/* loaded from: classes.dex */
public class j extends com.byazt.xq.s<Long, Bitmap> {
    public final Map<Long, SoftReference<hp>> hp;

    public interface hp {
        void hp(Bitmap bitmap);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public static class l {
        public static j hp = new j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(int i2, int i3, BitmapFactory.Options options) {
        int i4 = options.outWidth;
        if (i4 > i2 || options.outHeight > i3) {
            return Math.min(Math.round(i4 / i2), Math.round(options.outHeight / i3));
        }
        return 1;
    }

    private j() {
        super(8, 8);
        this.hp = new HashMap();
    }

    public static j hp() {
        return l.hp;
    }

    public void hp(long j2, @NonNull hp hpVar) {
        if (get(Long.valueOf(j2)) != null) {
            hpVar.hp(get(Long.valueOf(j2)));
        } else {
            this.hp.put(Long.valueOf(j2), new SoftReference<>(hpVar));
        }
    }

    public void hp(final long j2, final long j3, final String str) {
        if (get(Long.valueOf(j2)) != null) {
            SoftReference<hp> softReferenceRemove = this.hp.remove(Long.valueOf(j2));
            if (softReferenceRemove == null || softReferenceRemove.get() == null) {
                return;
            }
            softReferenceRemove.get().hp(get(Long.valueOf(j2)));
            return;
        }
        if (TextUtils.isEmpty(str)) {
            eb.hp(12, j3);
        } else {
            com.byazt.y.jx.hp((jx.hp<Object, R>) new jx.hp<Object, Object>() { // from class: com.byazt.i.j.2
                @Override // com.byazt.y.jx.hp
                public Object hp(Object obj) throws Throwable {
                    BufferedInputStream bufferedInputStream;
                    Throwable th;
                    q qVarHp;
                    try {
                        qVarHp = com.byazt.yk.jx.hp(true, 0, str, null);
                    } catch (Exception e2) {
                        e = e2;
                        bufferedInputStream = null;
                    } catch (Throwable th2) {
                        bufferedInputStream = null;
                        th = th2;
                        com.byazt.xq.a.hp(bufferedInputStream);
                        throw th;
                    }
                    if (qVarHp == null) {
                        com.byazt.xq.a.hp(null);
                        return null;
                    }
                    bufferedInputStream = new BufferedInputStream(qVarHp.hp());
                    try {
                        try {
                            bufferedInputStream.mark(bufferedInputStream.available());
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeStream(bufferedInputStream, null, options);
                            int i2 = options.outWidth;
                            int i3 = options.outHeight;
                            int iHp = zy.hp(jl.getContext(), 60.0f);
                            options.inSampleSize = j.l(iHp, iHp, options);
                            options.inJustDecodeBounds = false;
                            bufferedInputStream.reset();
                            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(bufferedInputStream, null, options);
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.putOpt("ttdownloader_type", "load_bitmap");
                                jSONObject.putOpt("bm_original_w", Integer.valueOf(i2));
                                jSONObject.putOpt("bm_original_h", Integer.valueOf(i3));
                                jSONObject.putOpt("bm_bytes", Integer.valueOf(bitmapDecodeStream == null ? -1 : bitmapDecodeStream.getByteCount()));
                            } catch (Exception unused) {
                            }
                            com.byazt.r.hp.hp().hp("ttd_pref_monitor", jSONObject, j3);
                            j.this.put(Long.valueOf(j2), bitmapDecodeStream);
                            com.byazt.xq.a.hp(bufferedInputStream);
                        } catch (Exception e3) {
                            e = e3;
                            com.byazt.u.jx.hp().hp(e, "BitmapCache loadBitmap");
                            com.byazt.xq.a.hp(bufferedInputStream);
                            return null;
                        }
                        return null;
                    } catch (Throwable th3) {
                        th = th3;
                        com.byazt.xq.a.hp(bufferedInputStream);
                        throw th;
                    }
                }
            }, (Object) null).hp(new jx.hp<Object, Object>() { // from class: com.byazt.i.j.1
                @Override // com.byazt.y.jx.hp
                public Object hp(Object obj) {
                    SoftReference softReference = (SoftReference) j.this.hp.remove(Long.valueOf(j2));
                    if (softReference == null || softReference.get() == null) {
                        return null;
                    }
                    ((hp) softReference.get()).hp(j.this.get(Long.valueOf(j2)));
                    return null;
                }
            }).hp();
        }
    }
}
