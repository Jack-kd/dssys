package com.byazt.zn;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 442, 591})
/* loaded from: classes3.dex */
public class ud {
    public String hp;

    private ud() {
        l();
    }

    public static ud hp() {
        return new ud();
    }

    private void jx() {
        try {
            com.byazt.ocx.hp.hp().jx();
        } catch (Throwable unused) {
        }
        try {
            com.byazt.vo.hp.hp().l();
        } catch (Throwable unused2) {
        }
        try {
            com.byazt.jkd.s.l();
        } catch (Throwable unused3) {
        }
        try {
            com.byazt.ir.l.l();
            com.byazt.wv.l.l().a();
        } catch (Throwable unused4) {
        }
        try {
            Function<SparseArray<Object>, Object> functionXh = com.byazt.jz.s.u().xh();
            if (functionXh != null) {
                functionXh.apply(com.byazt.wi.j.hp().hp(7).hp(Void.class).l());
            }
        } catch (Throwable unused5) {
        }
        try {
            com.byazt.lca.jx.hp().gu();
            com.byazt.lca.j.hp().vv();
            com.byazt.lca.w.hp().u();
        } catch (Throwable unused6) {
        }
    }

    private void l() {
        File fileHp;
        Context context = com.byazt.jz.sz.getContext();
        if (context == null) {
            return;
        }
        try {
            if ("mounted".equals(com.byazt.dnb.j.hp()) && (fileHp = com.byazt.ymw.eb.hp(context, "TTCache", false, null)) != null) {
                fileHp.mkdirs();
                this.hp = fileHp.getPath();
            }
            if (TextUtils.isEmpty(this.hp)) {
                File file = new File(com.byazt.ymw.eb.hp(context, false, null), "TTCache");
                file.mkdirs();
                this.hp = file.getPath();
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(Thread thread, Throwable th, String str) {
        boolean zContains = false;
        try {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            String string = stringWriter.toString();
            if (string != null) {
                if (TextUtils.isEmpty(str)) {
                    str = TTAdConstant.class.getPackage().getName();
                }
                zContains = string.contains(str);
            }
            com.byazt.kl.j.hp().hp(thread, th);
        } catch (Throwable unused) {
        }
        if (zContains) {
            hp(thread, th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0110 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x010b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v12, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r14v5, types: [java.util.Properties] */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v17 */
    /* JADX WARN: Type inference failed for: r15v19 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r15v6, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r15v7, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.Properties] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(java.lang.Thread r14, java.lang.Throwable r15) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zn.ud.hp(java.lang.Thread, java.lang.Throwable):void");
    }
}
