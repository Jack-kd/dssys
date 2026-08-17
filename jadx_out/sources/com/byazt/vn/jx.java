package com.byazt.vn;

import android.text.TextUtils;
import com.anythink.china.a.c;
import com.anythink.core.common.d.i;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.HashSet;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1312, 30})
/* loaded from: classes3.dex */
public class jx {
    public int hp(File file, boolean z2, StringBuilder sb) {
        String string;
        ZipFile zipFile = null;
        try {
            ZipFile zipFile2 = new ZipFile(file);
            try {
                ZipEntry entry = zipFile2.getEntry("assets/ZeusResMapping");
                if (entry == null) {
                    com.byazt.lc.eb.hp(zipFile2);
                    return 200;
                }
                if (z2) {
                    File file2 = new File(file.getParentFile(), "resMappingBak");
                    if (!file2.exists()) {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "resMappingBakFile is not exists. " + file2.getAbsolutePath());
                        sb.append("resMappingBakFile is not exists. ");
                        sb.append(file2.getAbsolutePath());
                        com.byazt.lc.eb.hp(zipFile2);
                        return 300;
                    }
                    string = com.byazt.lc.s.hp(file2);
                } else {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    com.byazt.lc.s.hp(zipFile2.getInputStream(entry), byteArrayOutputStream);
                    string = byteArrayOutputStream.toString();
                }
                if (TextUtils.isEmpty(string)) {
                    ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "zeusResMappingContent empty, useBakFile:".concat(String.valueOf(z2)));
                    sb.append("zeusResMappingContent isEmpty. useBakFile:");
                    sb.append(z2);
                    com.byazt.lc.eb.hp(zipFile2);
                    return 300;
                }
                JSONObject jSONObject = new JSONObject(string);
                JSONObject jSONObject2 = new JSONObject(string);
                JSONArray jSONArray = (JSONArray) jSONObject.get("fileNames");
                final HashSet<String> hashSet = new HashSet<>();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    hashSet.add((String) jSONArray.get(i2));
                }
                final JSONObject jSONObject3 = (JSONObject) jSONObject.get("resMapping");
                final JSONObject jSONObject4 = (JSONObject) jSONObject2.get("resMapping");
                final int[] iArr = {0};
                try {
                    hp(file, hashSet, new s() { // from class: com.byazt.vn.jx.1
                        @Override // com.byazt.vn.s
                        public int hp(int i3) {
                            String str = "0x" + Integer.toHexString(i3);
                            String str2 = (String) jSONObject3.opt(str);
                            if (str2 == null) {
                                return i3;
                            }
                            int identifier = Zeus.getAppApplication().getResources().getIdentifier(str2.split(" ")[1], str2.split(" ")[0], Zeus.getAppApplication().getPackageName());
                            if (identifier == 0) {
                                identifier = Zeus.getAppApplication().getResources().getIdentifier(str2.split(" ")[1].replaceAll("_", i.f2495E), str2.split(" ")[0], Zeus.getAppApplication().getPackageName());
                            }
                            if (identifier == 0) {
                                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "getIdentifier failed. resName is ".concat(str2));
                                return i3;
                            }
                            String str3 = "0x" + Integer.toHexString(identifier);
                            if (TextUtils.equals(jSONObject4.optString(str), str2)) {
                                jSONObject4.remove(str);
                            }
                            try {
                                jSONObject4.put(str3, str2);
                            } catch (Throwable th) {
                                ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "update resMappingBak failed.", th);
                            }
                            if (identifier != i3) {
                                int[] iArr2 = iArr;
                                iArr2[0] = iArr2[0] + 1;
                            }
                            return identifier;
                        }

                        @Override // com.byazt.vn.s
                        public boolean hp(String str) {
                            return hashSet.contains(str);
                        }
                    });
                    ZeusLogger.d(ZeusLogger.TAG_INSTALL, "modifyRes count = " + iArr[0]);
                    if (com.byazt.lc.s.hp(jSONObject2.toString(), new File(file.getParentFile(), "resMappingBak"), sb)) {
                        com.byazt.lc.eb.hp(zipFile2);
                        return 100;
                    }
                    ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "writeText failed." + sb.toString());
                    sb.append("writeText failed.");
                    com.byazt.lc.eb.hp(zipFile2);
                    return 300;
                } catch (Throwable th) {
                    th = th;
                    zipFile = zipFile2;
                    try {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "modifyRes failed. catch: " + th.getMessage(), th);
                        sb.append("modifyRes failed. catch: ");
                        sb.append(th.getMessage());
                        return 300;
                    } finally {
                        if (zipFile != null) {
                            com.byazt.lc.eb.hp(zipFile);
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void hp(File file, HashSet<String> hashSet, s sVar) throws Throwable {
        MappedByteBuffer mappedByteBufferHp = hp(file);
        int iHp = hp(mappedByteBufferHp);
        if (iHp != -1) {
            int i2 = mappedByteBufferHp.getInt(iHp + 12);
            int i3 = mappedByteBufferHp.getInt(iHp + 16);
            int i4 = i2 + i3;
            while (i3 < i4) {
                if (mappedByteBufferHp.getInt(i3) == 33639248) {
                    int i5 = mappedByteBufferHp.getShort(i3 + 28);
                    short s2 = mappedByteBufferHp.getShort(i3 + 30);
                    byte[] bArr = new byte[i5];
                    for (int i6 = 0; i6 < i5; i6++) {
                        bArr[i6] = mappedByteBufferHp.get(i3 + 46 + i6);
                    }
                    String str = new String(bArr);
                    int i7 = mappedByteBufferHp.getInt(i3 + 20);
                    int i8 = mappedByteBufferHp.getInt(i3 + 24);
                    if (hashSet.contains(str)) {
                        if (i7 == i8) {
                            com.byazt.lc.w<Integer, byte[]> wVarHp = hp(mappedByteBufferHp, mappedByteBufferHp.getInt(i3 + 42), str);
                            try {
                                gu.hp(str, wVarHp.f22417l, sVar);
                                for (int i9 = 0; i9 < wVarHp.f22417l.length; i9++) {
                                    mappedByteBufferHp.put(wVarHp.hp.intValue() + i9, wVarHp.f22417l[i9]);
                                }
                            } catch (Throwable th) {
                                throw new RuntimeException(th);
                            }
                        } else {
                            throw new Throwable(str + " is compressed.");
                        }
                    }
                    i3 += i5 + 46 + s2;
                } else {
                    throw new RuntimeException("Expected: 0x02014b50, got: " + mappedByteBufferHp.getInt(i3));
                }
            }
            return;
        }
        throw new Throwable("endOfCentralPosition == -1");
    }

    private static com.byazt.lc.w<Integer, byte[]> hp(MappedByteBuffer mappedByteBuffer, int i2, String str) {
        if (mappedByteBuffer.getInt(i2) == 67324752) {
            int i3 = mappedByteBuffer.getInt(i2 + 18);
            int i4 = mappedByteBuffer.getInt(i2 + 22);
            if (i3 == i4) {
                byte[] bArr = new byte[i4];
                int i5 = i2 + 30 + mappedByteBuffer.getShort(i2 + 26) + mappedByteBuffer.getShort(i2 + 28);
                for (int i6 = 0; i6 < i4; i6++) {
                    bArr[i6] = mappedByteBuffer.get(i5 + i6);
                }
                return new com.byazt.lc.w<>(Integer.valueOf(i5), bArr);
            }
            throw new RuntimeException(str + " is compressed. compressSize:" + i3 + " size:" + i4);
        }
        throw new RuntimeException("Expected: 0x04034b50, got: " + mappedByteBuffer.getInt(i2) + " FileName:" + str);
    }

    private int hp(ByteBuffer byteBuffer) {
        int iCapacity = byteBuffer.capacity();
        if (iCapacity < 22) {
            return -1;
        }
        int i2 = iCapacity - 22;
        int iMin = Math.min(i2, 65535);
        for (int i3 = 0; i3 < iMin; i3++) {
            int i4 = i2 - i3;
            if (byteBuffer.getInt(i4) == 101010256 && byteBuffer.getShort(i4 + 20) == i3) {
                return i4;
            }
        }
        return -1;
    }

    public MappedByteBuffer hp(File file) throws Throwable {
        Throwable th;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        try {
            ZeusLogger.d("temp-pxr", "mappedByteBuffer " + file.canWrite());
            if (!file.canWrite()) {
                file.setWritable(true);
            }
            randomAccessFile = new RandomAccessFile(file, "rw");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            FileChannel channel = randomAccessFile.getChannel();
            long size = channel.size();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_WRITE, 0L, size);
            byte[] bArr = new byte[4194304];
            long j2 = size / c.f1402w;
            int i2 = (int) (size % c.f1402w);
            for (int i3 = 0; i3 < j2; i3++) {
                map.get(bArr);
            }
            if (i2 > 0) {
                map.get(new byte[i2]);
            }
            map.order(ByteOrder.LITTLE_ENDIAN);
            randomAccessFile.close();
            return map;
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 == null) {
                throw th;
            }
            randomAccessFile2.close();
            throw th;
        }
    }
}
