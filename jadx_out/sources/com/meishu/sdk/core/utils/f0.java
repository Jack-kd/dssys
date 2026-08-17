package com.meishu.sdk.core.utils;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.domain.HttpResponse;
import com.meishu.sdk.core.utils.s0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public class f0 {

    /* renamed from: a, reason: collision with root package name */
    public static RenderScript f31893a;

    /* renamed from: b, reason: collision with root package name */
    public static final List<String> f31894b = Collections.synchronizedList(new ArrayList());

    public class a implements y {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f31895a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ b f31896b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ File f31897c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ File f31898d;

        public a(String str, b bVar, File file, File file2) {
            this.f31895a = str;
            this.f31896b = bVar;
            this.f31897c = file;
            this.f31898d = file2;
        }

        @Override // com.meishu.sdk.core.utils.y
        public void onFailure(@NotNull IOException iOException) {
            try {
                f0.f31894b.remove(this.f31895a);
            } catch (Exception unused) {
            }
            b bVar = this.f31896b;
            if (bVar != null) {
                ((s0.a) bVar).a(false);
            }
        }

        @Override // com.meishu.sdk.core.utils.y
        public void onResponse(HttpResponse<byte[]> httpResponse) throws IOException {
            b bVar;
            FileOutputStream fileOutputStream = null;
            boolean z2 = false;
            try {
                if (httpResponse.isSuccessful()) {
                    byte[] responseBody = httpResponse.getResponseBody();
                    FileOutputStream fileOutputStream2 = new FileOutputStream(this.f31897c);
                    try {
                        fileOutputStream2.write(responseBody);
                        fileOutputStream2.close();
                        if (this.f31897c.renameTo(this.f31898d)) {
                            z2 = true;
                        } else {
                            LogUtil.e("ImageUtil", "rename error");
                        }
                        fileOutputStream = fileOutputStream2;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        try {
                            th.printStackTrace();
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused) {
                                }
                            }
                            try {
                                f0.f31894b.remove(this.f31895a);
                            } catch (Exception unused2) {
                            }
                            bVar = this.f31896b;
                            if (bVar == null) {
                                return;
                            }
                            ((s0.a) bVar).a(z2);
                        } finally {
                        }
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                try {
                    f0.f31894b.remove(this.f31895a);
                } catch (Exception unused4) {
                }
                bVar = this.f31896b;
                if (bVar == null) {
                    return;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            ((s0.a) bVar).a(z2);
        }
    }

    public interface b {
    }

    public static Bitmap a(Bitmap bitmap, int i2) {
        if (bitmap == null) {
            return null;
        }
        try {
            Bitmap.Config config = bitmap.getConfig();
            Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
            if (config != config2) {
                bitmap = bitmap.copy(config2, true);
            }
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth() / 4, bitmap.getHeight() / 4, false);
            bitmapCreateScaledBitmap.getWidth();
            bitmapCreateScaledBitmap.getHeight();
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(f31893a, bitmapCreateScaledBitmap);
            Allocation allocationCreateTyped = Allocation.createTyped(f31893a, allocationCreateFromBitmap.getType());
            RenderScript renderScript = f31893a;
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.setRadius(i2);
            scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            allocationCreateTyped.copyTo(bitmapCreateScaledBitmap);
            f31893a.destroy();
            return bitmapCreateScaledBitmap;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static Bitmap b(String str) {
        MediaMetadataRetriever mediaMetadataRetriever;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                mediaMetadataRetriever = new MediaMetadataRetriever();
            } catch (Throwable th) {
                th = th;
                mediaMetadataRetriever = null;
            }
            try {
                if (str.trim().toLowerCase().contains("m3u8") || !str.trim().toLowerCase().startsWith("http")) {
                    mediaMetadataRetriever.setDataSource(str);
                } else {
                    mediaMetadataRetriever.setDataSource(new com.meishu.sdk.meishu_ad.view.player.d(str));
                }
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0L);
                mediaMetadataRetriever.release();
                return frameAtTime;
            } catch (Throwable th2) {
                th = th2;
                try {
                    LogUtil.e("getFramePictures ERROR:", th.toString());
                    if (mediaMetadataRetriever != null) {
                        mediaMetadataRetriever.release();
                    }
                    return null;
                } catch (Throwable th3) {
                    if (mediaMetadataRetriever != null) {
                        try {
                            mediaMetadataRetriever.release();
                        } catch (Throwable unused) {
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public static File b() {
        try {
            File file = new File(AdSdk.getContext().getFilesDir(), "def_images");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean a(byte[] bArr) {
        return bArr.length >= 4 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70;
    }

    public static void a(String str, boolean z2, b bVar) {
        if (z2) {
            try {
                a();
            } catch (Throwable th) {
                th.printStackTrace();
                if (bVar != null) {
                    ((s0.a) bVar).a(false);
                    return;
                }
                return;
            }
        }
        if (TextUtils.isEmpty(str)) {
            if (bVar != null) {
                ((s0.a) bVar).a(false);
                return;
            }
            return;
        }
        String strA = a(str, ".jpg");
        File file = new File(b(), strA);
        if (file.exists()) {
            if (bVar != null) {
                ((s0.a) bVar).a(true);
                return;
            }
            return;
        }
        List<String> list = f31894b;
        if (list.contains(str)) {
            if (bVar != null) {
                ((s0.a) bVar).a(false);
                return;
            }
            return;
        }
        list.add(str);
        File file2 = new File(b(), strA + "_temp");
        if (file2.exists()) {
            file2.delete();
        }
        a0.a(str, (y) new a(str, bVar, file2, file), false);
    }

    public static byte[] a(String str) {
        try {
            String strA = a(str, ".jpg");
            File file = new File(b(), strA);
            if (file.exists()) {
                AdSdk.getSharedPreferences().edit().putLong(strA, System.currentTimeMillis()).apply();
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i2 = fileInputStream.read(bArr);
                        if (i2 != -1) {
                            byteArrayOutputStream.write(bArr, 0, i2);
                        } else {
                            fileInputStream.close();
                            byteArrayOutputStream.close();
                            return byteArrayOutputStream.toByteArray();
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                    return null;
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return null;
    }

    public static String a(String str, String str2) throws Exception {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                sb.append(String.format("%02x", Byte.valueOf(b3)));
            }
            return sb.toString() + str2;
        } catch (Exception unused) {
            return String.valueOf(str.hashCode()) + str2;
        }
    }

    public static void a() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            File[] fileArrListFiles = b().listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            SharedPreferences.Editor editorEdit = AdSdk.getSharedPreferences().edit();
            boolean z2 = false;
            for (File file : fileArrListFiles) {
                String name = file.getName();
                long jLastModified = AdSdk.getSharedPreferences().getLong(name, 0L);
                if (jLastModified == 0) {
                    jLastModified = file.lastModified();
                }
                if (jCurrentTimeMillis - jLastModified > 2592000000L && file.delete()) {
                    editorEdit.remove(name);
                    System.out.println("删除过期缓存文件: " + name);
                    z2 = true;
                }
            }
            if (z2) {
                editorEdit.apply();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
