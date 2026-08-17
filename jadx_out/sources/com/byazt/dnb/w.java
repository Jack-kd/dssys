package com.byazt.dnb;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

@com.byazt.kj.hp(hp = {0, 1, 1239, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {
    public static void hp(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private static void jx(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                l(file2);
            }
        }
    }

    public static void l(File file) {
        if (file.isDirectory()) {
            jx(file);
        } else {
            file.delete();
        }
    }

    public static File hp(File file, String str) throws Throwable {
        File file2;
        ZipOutputStream zipOutputStream = null;
        try {
            try {
                file2 = new File(file.getParentFile(), str);
                try {
                    if (file.exists() && file.isDirectory()) {
                        ZipOutputStream zipOutputStream2 = new ZipOutputStream(new FileOutputStream(file2));
                        try {
                            for (File file3 : file.listFiles()) {
                                zipOutputStream2.putNextEntry(new ZipEntry(file3.getName()));
                                hp(zipOutputStream2, file3);
                                zipOutputStream2.closeEntry();
                            }
                            zipOutputStream2.flush();
                            zipOutputStream = zipOutputStream2;
                        } catch (IOException unused) {
                            zipOutputStream = zipOutputStream2;
                            hp(zipOutputStream);
                            return file2;
                        } catch (Throwable th) {
                            th = th;
                            zipOutputStream = zipOutputStream2;
                            hp(zipOutputStream);
                            throw th;
                        }
                    }
                    hp(zipOutputStream);
                    return file2;
                } catch (IOException unused2) {
                }
            } catch (IOException unused3) {
                file2 = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean hp(String str, File file) throws Throwable {
        BufferedWriter bufferedWriter;
        BufferedWriter bufferedWriter2 = null;
        try {
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
            }
            bufferedWriter = new BufferedWriter(new FileWriter(file));
        } catch (FileNotFoundException | IOException unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedWriter.write(str);
            bufferedWriter.flush();
            hp(bufferedWriter);
            return true;
        } catch (FileNotFoundException | IOException unused2) {
            bufferedWriter2 = bufferedWriter;
            hp(bufferedWriter2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            hp(bufferedWriter2);
            throw th;
        }
    }

    public static String hp(File file) throws IOException {
        if (file != null && file.exists() && file.isFile()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), StandardCharsets.UTF_8));
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        sb.append(System.lineSeparator());
                    }
                    if (sb.length() > 0) {
                        sb.setLength(sb.length() - System.lineSeparator().length());
                    }
                    String strTrim = sb.toString().trim();
                    bufferedReader.close();
                    return strTrim;
                } finally {
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static void hp(OutputStream outputStream, File file) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                byte[] bArr = new byte[1048576];
                while (true) {
                    int i2 = fileInputStream2.read(bArr);
                    if (i2 != -1) {
                        outputStream.write(bArr, 0, i2);
                    } else {
                        hp(fileInputStream2);
                        return;
                    }
                }
            } catch (FileNotFoundException unused) {
                fileInputStream = fileInputStream2;
                hp(fileInputStream);
            } catch (IOException unused2) {
                fileInputStream = fileInputStream2;
                hp(fileInputStream);
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                hp(fileInputStream);
                throw th;
            }
        } catch (FileNotFoundException unused3) {
        } catch (IOException unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
