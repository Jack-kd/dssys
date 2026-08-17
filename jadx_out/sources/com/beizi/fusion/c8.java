package com.beizi.fusion;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.Toast;
import com.byazt.rx.BaseConstants;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public abstract class c8 {
    public static boolean a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return context.getPackageManager().getApplicationInfo(str, 0) != null;
    }

    public static void b(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage != null) {
                launchIntentForPackage.setFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                context.startActivity(launchIntentForPackage);
            }
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(context, "启动失败:" + str, 1).show();
        }
    }

    public static File c(Context context) {
        try {
            return context.getCacheDir();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static File d(Context context) {
        if (context == null) {
            return null;
        }
        try {
            File externalFilesDir = ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) ? context.getExternalFilesDir(null) : null;
            return externalFilesDir == null ? context.getFilesDir() : externalFilesDir;
        } catch (Exception unused) {
            return context.getFilesDir();
        }
    }

    public static File e(Context context) {
        try {
            File file = new File(context.getCacheDir().getPath() + "/beizi/material/");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static final File f(Context context) {
        File fileD = d(context);
        if (fileD == null) {
            return null;
        }
        File file = new File(fileD.getPath() + "/Beizi/download/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void a(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public static File b(Context context) {
        File file = new File(context.getCacheDir().getPath() + "/beizi/ad/");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void a(Context context, int i2) {
        File[] fileArrListFiles;
        if (context == null) {
            return;
        }
        try {
            File fileE = e(context);
            if (fileE == null || !fileE.exists() || (fileArrListFiles = fileE.listFiles()) == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - (BaseConstants.Time.DAY * i2);
            try {
                int i3 = 0;
                for (File file : fileArrListFiles) {
                    if (file.isFile() && file.exists()) {
                        if (i3 > 100) {
                            return;
                        }
                        if (file.lastModified() < jCurrentTimeMillis) {
                            file.delete();
                            i3++;
                        }
                    }
                }
                if (i2 != 5 || fileE.listFiles().length <= 400) {
                    return;
                }
                a(context, 2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Throwable unused) {
        }
    }

    public static String b(Context context, String str, String str2) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                File file = new File(b(context).getPath() + ServiceReference.DELIMITER + str + ServiceReference.DELIMITER, str2);
                if (!file.exists()) {
                    return null;
                }
                fileReader = new FileReader(file);
                try {
                    if (!fileReader.ready()) {
                        try {
                            fileReader.close();
                        } catch (Throwable unused) {
                        }
                        return null;
                    }
                    bufferedReader = new BufferedReader(fileReader);
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(line);
                        }
                        String string = sb.toString();
                        try {
                            bufferedReader.close();
                            fileReader.close();
                        } catch (Throwable unused2) {
                        }
                        return string;
                    } catch (Throwable unused3) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable unused4) {
                            }
                        }
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        return null;
                    }
                } catch (Throwable unused5) {
                    bufferedReader = null;
                }
            } catch (Throwable unused6) {
                fileReader = null;
                bufferedReader = null;
            }
        }
        return null;
    }

    public static boolean a(Context context, String str, String str2, String str3) {
        FileWriter fileWriter;
        BufferedWriter bufferedWriter;
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            BufferedWriter bufferedWriter2 = null;
            try {
                File file = new File(b(context).getPath() + ServiceReference.DELIMITER + str + ServiceReference.DELIMITER);
                if (!file.exists()) {
                    file.mkdirs();
                }
                fileWriter = new FileWriter(new File(file, str2), false);
                try {
                    bufferedWriter = new BufferedWriter(fileWriter);
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                fileWriter = null;
            }
            try {
                bufferedWriter.write(str3);
                try {
                    bufferedWriter.close();
                    fileWriter.close();
                } catch (Throwable unused3) {
                }
                return true;
            } catch (Throwable unused4) {
                bufferedWriter2 = bufferedWriter;
                if (bufferedWriter2 != null) {
                    try {
                        bufferedWriter2.close();
                    } catch (Throwable unused5) {
                    }
                }
                if (fileWriter != null) {
                    fileWriter.close();
                }
                return false;
            }
        }
        return false;
    }

    public static void a(Context context) {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        if (context == null) {
            return;
        }
        try {
            File fileB = b(context);
            if (fileB.exists() && fileB.isDirectory() && (fileArrListFiles = fileB.listFiles()) != null) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                Date date = new Date(System.currentTimeMillis() - 86400000);
                for (File file : fileArrListFiles) {
                    if (file.isDirectory() && (fileArrListFiles2 = file.listFiles()) != null) {
                        try {
                            for (File file2 : fileArrListFiles2) {
                                if (file2.isFile() && simpleDateFormat.parse(simpleDateFormat.format(Long.valueOf(file2.lastModified()))).before(date)) {
                                    file2.delete();
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, String str, String str2) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            File fileB = b(context);
            if (fileB.exists() && fileB.isDirectory()) {
                File file = new File(fileB.getPath() + ServiceReference.DELIMITER + str + ServiceReference.DELIMITER, str2);
                if (file.exists()) {
                    file.delete();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
