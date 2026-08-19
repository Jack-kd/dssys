package com.byazt.xm;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 168, 34})
/* loaded from: classes3.dex */
public final class l {

    /* renamed from: com.byazt.xm.l$l, reason: collision with other inner class name */
    public interface InterfaceC0408l {
        void hp(Bitmap bitmap);
    }

    public static void hp(long j2, String str, InterfaceC0408l interfaceC0408l) {
        new hp(interfaceC0408l, j2).hp((Object[]) new String[]{str});
    }

    @com.byazt.kj.hp(hp = {0, 1, 168, 123})
    public static class hp extends com.byazt.shx.l<String, Integer, Bitmap> {
        public InterfaceC0408l hp;

        /* renamed from: l, reason: collision with root package name */
        public long f27687l;

        public hp(InterfaceC0408l interfaceC0408l, long j2) {
            this.hp = interfaceC0408l;
            this.f27687l = j2;
        }

        @Override // android.os.AsyncTask
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public Bitmap doInBackground(String... strArr) {
            Bitmap frameAtTime = null;
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                String str = strArr[0];
                if (str.startsWith("http")) {
                    mediaMetadataRetriever.setDataSource(str, new HashMap());
                } else {
                    mediaMetadataRetriever.setDataSource(str);
                }
                frameAtTime = mediaMetadataRetriever.getFrameAtTime(this.f27687l * 1000, 3);
                mediaMetadataRetriever.release();
                return frameAtTime;
            } catch (Throwable th) {
                com.byazt.qm.l.hp("MediaUtils", "MediaUtils doInBackground : ", th);
                return frameAtTime;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            InterfaceC0408l interfaceC0408l = this.hp;
            if (interfaceC0408l != null) {
                interfaceC0408l.hp(bitmap);
            }
        }
    }
}
