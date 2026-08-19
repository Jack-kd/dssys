package com.umeng.commonsdk.internal.utils;

import android.os.Build;
import com.kuaishou.weapon.p0.bg;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public class e {

    public enum a {
        check_su_binary(new String[]{"/system/xbin/which", bg.f30879y});


        /* renamed from: b, reason: collision with root package name */
        String[] f50173b;

        a(String[] strArr) {
            this.f50173b = strArr;
        }
    }

    public ArrayList a(a aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                Process processExec = Runtime.getRuntime().exec(aVar.f50173b);
                new BufferedWriter(new OutputStreamWriter(processExec.getOutputStream()));
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        arrayList.add(line);
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
                return null;
            }
        }
        return arrayList;
    }
}
