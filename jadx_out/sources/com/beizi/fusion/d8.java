package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class d8 {
    public static void a(Context context, String str, String str2) throws Throwable {
        Throwable th;
        FileWriter fileWriter;
        BufferedWriter bufferedWriter;
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                File file = new File(k4.b(context).getPath() + "/BeiZi/config/");
                if (!file.exists()) {
                    file.mkdirs();
                }
                fileWriter = new FileWriter(new File(file, str), false);
                try {
                    bufferedWriter = new BufferedWriter(fileWriter);
                } catch (Exception unused) {
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException unused2) {
                return;
            }
        } catch (Exception unused3) {
            fileWriter = null;
        } catch (Throwable th3) {
            th = th3;
            fileWriter = null;
        }
        try {
            bufferedWriter.write(str2);
            bufferedWriter.close();
            fileWriter.close();
        } catch (Exception unused4) {
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                bufferedWriter2.close();
            }
            if (fileWriter != null) {
                fileWriter.close();
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.close();
                } catch (IOException unused5) {
                    throw th;
                }
            }
            if (fileWriter != null) {
                fileWriter.close();
            }
            throw th;
        }
    }

    public static String a(Context context, String str) throws Throwable {
        Throwable th;
        FileReader fileReader;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            File file = new File(k4.b(context).getPath() + "/BeiZi/config/", str);
            if (!file.exists()) {
                return null;
            }
            fileReader = new FileReader(file);
            try {
                if (!fileReader.ready()) {
                    try {
                        fileReader.close();
                    } catch (IOException unused) {
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
                    } catch (IOException unused2) {
                    }
                    return string;
                } catch (Exception unused3) {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused4) {
                            return null;
                        }
                    }
                    if (fileReader != null) {
                        fileReader.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    bufferedReader2 = bufferedReader;
                    th = th2;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException unused5) {
                            throw th;
                        }
                    }
                    if (fileReader != null) {
                        fileReader.close();
                    }
                    throw th;
                }
            } catch (Exception unused6) {
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception unused7) {
            fileReader = null;
            bufferedReader = null;
        } catch (Throwable th4) {
            th = th4;
            fileReader = null;
        }
    }
}
