package com.octopus.ad.d.b;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.anythink.core.e.b;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.octopus.ad.Octopus;
import com.octopus.ad.internal.c.k;
import com.octopus.ad.internal.c.o;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.q;
import com.octopus.ad.utils.a;
import java.io.File;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final Context f34006a;

    public b(Context context) {
        this.f34006a = context;
    }

    private void b() throws JSONException {
        try {
            String strA = a();
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strA);
            boolean zG = k.g(jSONObject, "canGetPkg");
            boolean zG2 = k.g(jSONObject, "getLauncherPkg");
            boolean zG3 = k.g(jSONObject, "isUseSoPkg");
            boolean zG4 = k.g(jSONObject, "getBootId");
            q.a().f35015f = zG4;
            o.a(this.f34006a, "getBootId", Boolean.valueOf(zG4));
            boolean zG5 = k.g(jSONObject, "getOperator");
            q.a().f35018i = zG5;
            o.a(this.f34006a, "getOperator", Boolean.valueOf(zG5));
            q.a().f35010a = k.d(jSONObject, "s2sDelay");
            o.a(this.f34006a, "s2sDelay", Integer.valueOf(q.a().f35010a));
            q.a().f35011b = k.d(jSONObject, "retryTime");
            q.a().f35014e = k.d(jSONObject, "filterLevel");
            q.a().f35012c = k.d(jSONObject, "bidTime");
            q.a().f35013d = k.d(jSONObject, "isSpeed");
            q.a().f34987B = k.d(jSONObject, "splitNum");
            q.a().f34988C = k.d(jSONObject, "minimumMemory");
            o.a(this.f34006a, "minimumMemory", Integer.valueOf(q.a().f34988C));
            o.a(this.f34006a, "duration", Long.valueOf(jSONObject.optLong("duration")));
            boolean zG6 = k.g(jSONObject, "ipv6");
            q.a().f35017h = zG6;
            o.a(this.f34006a, "ipv6", Boolean.valueOf(zG6));
            boolean zG7 = k.g(jSONObject, "ssl");
            q.a().f35016g = zG7;
            o.a(this.f34006a, "ssl", Boolean.valueOf(zG7));
            String strC = k.c(jSONObject, b.a.f8705H);
            if (!TextUtils.isEmpty(strC)) {
                JSONObject jSONObject2 = new JSONObject(strC);
                String strC2 = k.c(jSONObject2, "sdk");
                if (!TextUtils.isEmpty(strC2)) {
                    q.a().f35019j = strC2;
                    o.a(this.f34006a, "sdk", strC2);
                }
                JSONArray jSONArrayA = k.a(jSONObject2, "sdkList");
                if (jSONArrayA != null) {
                    ArrayList<String> arrayListA = k.a(jSONArrayA);
                    if (arrayListA != null && arrayListA.size() > 1) {
                        q.a().f35020k = arrayListA;
                        o.a(this.f34006a, "sdkList", arrayListA);
                    } else if (q.a().f35020k != null) {
                        q.a().f35020k = null;
                        o.d(this.f34006a, "sdkList");
                    }
                } else if (q.a().f35020k != null) {
                    q.a().f35020k = null;
                    o.d(this.f34006a, "sdkList");
                }
                String strC3 = k.c(jSONObject2, "sdklog");
                if (!TextUtils.isEmpty(strC3)) {
                    q.a().f35021l = strC3;
                    o.a(this.f34006a, "sdklog", strC3);
                }
            }
            String strD = com.octopus.ad.utils.a.d();
            String str = "armeabi-v7a".equalsIgnoreCase(strD) ? "armeabi" : "arm64-v8a".equalsIgnoreCase(strD) ? "arm64" : "";
            if (!TextUtils.isEmpty(str)) {
                a(k.b(jSONObject, str), strD);
            }
            q.a().f34989D = k.a(jSONObject.optJSONArray("dpOrUlkTrackingList"));
            JSONArray jSONArray = new JSONArray(jSONObject.optString("data"));
            ArrayList arrayList = new ArrayList();
            if (jSONArray.length() > 0) {
                if (q.a().f34987B != 0) {
                    q.a().f34986A = jSONArray;
                    q.a().e();
                    return;
                }
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                    String strOptString = jSONObject3.optString("sid");
                    String strOptString2 = jSONObject3.optString("pkg");
                    boolean zA = i.a(strOptString2);
                    if (Octopus.getCustomController() == null || Octopus.getCustomController().isCanUseAppList()) {
                        if (!zA && zG2) {
                            zA = i.a(this.f34006a, strOptString2, zG3);
                        }
                        if (!zA && zG) {
                            zA = i.c(this.f34006a, strOptString2);
                        }
                    }
                    if (zA) {
                        arrayList.add(strOptString);
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                String strReplace = arrayList.toString().replace("[", "").replace("]", "");
                o.a(this.f34006a, "codeList", strReplace);
                com.octopus.ad.internal.c.a.a().f34512F = strReplace;
            }
        } catch (Exception e2) {
            com.octopus.ad.internal.o.a(new l("CFG", q.a().k(), 0));
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public String a() {
        String str = (String) o.b(this.f34006a, "responseBody", Octopus.isHttpsEnabled() ? "zyeyJkdXJhdGlvbiI6ODY0MDAsImluaXRTbyI6ZmFsc2UsImdldEJvb3RJZCI6dHJ1ZSwiZGF0YSI6W3sicGtnIjoiY29tLmJhaWR1LnNlYXJjaGJveCIsInNpZCI6IjMifSx7InBrZyI6ImNvbS5jdWJpYy5hdXRvaG9tZSIsInNpZCI6IjIifSx7InBrZyI6ImNvbS5qaW5nZG9uZy5hcHAubWFsbCIsInNpZCI6IjEifSx7InBrZyI6ImNvbS50YW9iYW8udGFvYmFvIiwic2lkIjoiNCJ9LHsicGtnIjoiY29tLmF1dG9uYXZpLm1pbmltYXAiLCJzaWQiOiI1In0seyJwa2ciOiJjb20uYWxpYmFiYS5hbmRyb2lkLnJpbWV0Iiwic2lkIjoiNiJ9LHsicGtnIjoiY29tLlVDTW9iaWxlIiwic2lkIjoiNyJ9LHsicGtnIjoiY29tLmVnLmFuZHJvaWQuQWxpcGF5R3Bob25lIiwic2lkIjoiOCJ9LHsicGtnIjoiY29tLnNhbmt1YWkubWVpdHVhbiIsInNpZCI6IjkifSx7InBrZyI6ImNvbS5zaW5hLndlaWJvIiwic2lkIjoiMTAifSx7InBrZyI6ImNvbS50YW9iYW8ubGl0ZXRhbyIsInNpZCI6IjExIn0seyJwa2ciOiJjb20udG1hbGwud2lyZWxlc3MiLCJzaWQiOiIxMiJ9LHsicGtnIjoiY29tLnRhb2Jhby5saXZlIiwic2lkIjoiMTMifSx7InBrZyI6ImNvbS56aGlodS5hbmRyb2lkIiwic2lkIjoiMTQifSx7InBrZyI6ImNvbS50ZW5jZW50LmthcmFva2UiLCJzaWQiOiIxNSJ9LHsicGtnIjoiY29tLnF1YXJrLmJyb3dzZXIiLCJzaWQiOiIxNiJ9LHsicGtnIjoiY29tLnNzLmFuZHJvaWQudWdjLmF3ZW1lIiwic2lkIjoiMTcifSx7InBrZyI6Im1lLmVsZSIsInNpZCI6IjE4In0seyJwa2ciOiJjb20uUXVuYXIiLCJzaWQiOiIxOSJ9LHsicGtnIjoiY29tLnh1bm1lbmcucGluZHVvZHVvIiwic2lkIjoiMjAifSx7InBrZyI6ImNvbS5zbWlsZS5naWZtYWtlciIsInNpZCI6IjIxIn0seyJwa2ciOiJjb20ua3VhaXNob3UubmVidWxhIiwic2lkIjoiMjIifSx7InBrZyI6ImNvbS5zZHUuZGlkaS5wc25nZXIiLCJzaWQiOiIyMyJ9LHsicGtnIjoiY29tLmRpZGFwaW5jaGUuYm9va2luZyIsInNpZCI6IjI0In0seyJwa2ciOiJhaXIudHYuZG91eXUuYW5kcm9pZCIsInNpZCI6IjI1In0seyJwa2ciOiJjb20ueGluZ2luLnhocyIsInNpZCI6IjI2In0seyJwa2ciOiJjb20uamQuanJhcHAiLCJzaWQiOiIyNyJ9LHsicGtnIjoiY29tLnlvdWt1LnBob25lIiwic2lkIjoiMjgifSx7InBrZyI6ImNvbS5vcHBvLnN0b3JlIiwic2lkIjoiMjkifSx7InBrZyI6ImNvbS5oZXl0YXAubWFya2V0Iiwic2lkIjoiMzAifSx7InBrZyI6ImNvbS5tZncucm9hZGJvb2siLCJzaWQiOiIzMSJ9LHsicGtnIjoiY29tLnNoaXpodWFuZy5kdWFwcCIsInNpZCI6IjMyIn0seyJwa2ciOiJjb20uYWNoaWV2by52aXBzaG9wIiwic2lkIjoiMzMifSx7InBrZyI6ImNvbS50YW91Lm1haW1haSIsInNpZCI6IjM0In0seyJwa2ciOiJjb20uc2Fua3VhaS5tZWl0dWFuLnRha2VvdXRuZXciLCJzaWQiOiIzNSJ9LHsicGtnIjoiY29tLnNzLmFuZHJvaWQudWdjLmF3ZW1lLmxpdGUiLCJzaWQiOiIzNiJ9LHsicGtnIjoiY29tLmFuanVrZS5hbmRyb2lkLmFwcCIsInNpZCI6IjM3In0seyJwa2ciOiJjb20uc3MuYW5kcm9pZC5hcnRpY2xlLm5ld3MiLCJzaWQiOiIzOCJ9LHsicGtnIjoiY29tLnRhb2Jhby5pZGxlZmlzaCIsInNpZCI6IjM5In0seyJwa2ciOiJjb20udWNtb2JpbGUubGl0ZSIsInNpZCI6IjQwIn0seyJwa2ciOiJjb20ueXVuY2VudGVjaG5vbG9neS5nb2Q0c29uZ3MiLCJzaWQiOiI0MSJ9LHsicGtnIjoiY29tLmZ6eWNpbmMuY2hhcmdpbmdlYXJudHJlYXN1cmUiLCJzaWQiOiI0MiJ9LHsicGtnIjoiY29tLnl1bmNlbnRlY2x0ZC5icm93c2luZ2hpZ2giLCJzaWQiOiI0MyJ9LHsicGtnIjoiY29tLm5uZGNpbmMuZ3Vlc3Npbmdzb25nbmFtZSIsInNpZCI6IjQ0In0seyJwa2ciOiJjb20uZ3JlZW5wb2ludC5hbmRyb2lkLm1jMTAwODYuYWN0aXZpdHkiLCJzaWQiOiI0NSJ9LHsicGtnIjoiY29tLnd1ZGFva291LmhpcHBvIiwic2lkIjoiNDYifSx7InBrZyI6ImNvbS5jYWluaWFvLndpcmVsZXNzIiwic2lkIjoiNDcifSx7InBrZyI6ImNvbS50YW9iYW8udHJscCIsInNpZCI6IjQ4In0seyJwa2ciOiJjb20ua2FvbGEiLCJzaWQiOiI0OSJ9LHsicGtnIjoiY29tLnRhb2Jhby5tb2JpbGUuZGlwZWwiLCJzaWQiOiI1MCJ9LHsicGtnIjoiY29tLnN1bmluZy5tb2JpbGUuZWJ1eSIsInNpZCI6IjUxIn0seyJwa2ciOiJjbi5hbWF6b24ubVNob3AuYW5kcm9pZCIsInNpZCI6IjUyIn0seyJwa2ciOiJjb20udGhlc3RvcmUubWFpbiIsInNpZCI6IjUzIn0seyJwa2ciOiJjb20uTW9iaWxlVGlja2V0Iiwic2lkIjoiNTQifSx7InBrZyI6ImNvbS5zaHVxaS5jb250cm9sbGVyIiwic2lkIjoiNTUifSx7InBrZyI6ImNvbS50YW9iYW8ubW9iaWxlLmRpcGVpIiwic2lkIjoiNTYifSx7InBrZyI6ImNvbS5xaXlpLnZpZGVvIiwic2lkIjoiNTcifSx7InBrZyI6ImN0cmlwLmFuZHJvaWQudmlldyIsInNpZCI6IjU4In0seyJwa2ciOiJjb20ubmV0ZWFzZS5jbG91ZG11c2ljIiwic2lkIjoiNTkifSx7InBrZyI6ImNvbS50aWFueWFuY2hhLnNreWV5ZSIsInNpZCI6IjYwIn0seyJwa2ciOiJjb20ua214cy5yZWFkZXIiLCJzaWQiOiI2MSJ9LHsicGtnIjoiY29tLnRhb2Jhby50cmlwIiwic2lkIjoiNjIifSx7InBrZyI6ImNvbS5hbGliYWJhLndpcmVsZXNzLmxzdHJldGFpbGVyIiwic2lkIjoiNjMifSx7InBrZyI6ImNvbS5tbWJhbmcubmVpZ2hib3Job29kIiwic2lkIjoiNjQifSx7InBrZyI6ImNvbS55YXlhLnpvbmUiLCJzaWQiOiI2NSJ9LHsicGtnIjoiY29tLmFsaWJhYmEud2lyZWxlc3MiLCJzaWQiOiI2NiJ9LHsicGtnIjoiY29tLmF1dG9uYXZpLm1pbmltYXAuY3VzdG9tIiwic2lkIjoiNjcifSx7InBrZyI6ImNvbS5rd2FpLnRoYW5vcyIsInNpZCI6IjY4In0seyJwa2ciOiJjb20ubGlhbmppYS5iZWlrZSIsInNpZCI6IjY5In0seyJwa2ciOiJjb20uYmFua2NvbW0uQmFua2NvbW0iLCJzaWQiOiI4MiJ9LHsicGtnIjoiY29tLnRhb2Jhby5ldGFvIiwic2lkIjoiODMifSx7InBrZyI6ImNvbS5kdW93YW4ubW9iaWxlIiwic2lkIjoiODQifSx7InBrZyI6ImNvbS5uZXRlYXNlLnlhbnh1YW4iLCJzaWQiOiI4NSJ9XSwiY2FuR2V0UGtnIjpmYWxzZSwiaXB2NiI6ZmFsc2UsImRvbWFpbiI6IntcInNka2xvZ1wiOlwiaHR0cHM6Ly9zZGtsb2cuemhhbmd5dXlpZG9uZy5jblwiLFwic2RrXCI6XCJodHRwczovL3Nkay56aGFuZ3l1eWlkb25nLmNuXCJ9IiwidmVyc2lvbiI6IjE3NDU1NjE0ODYzOTAiLCJzc2wiOnRydWUsImZpbHRlckxldmVsIjowfQ==" : "zyeyJkdXJhdGlvbiI6ODY0MDAsImluaXRTbyI6ZmFsc2UsImdldEJvb3RJZCI6dHJ1ZSwiZGF0YSI6W3sicGtnIjoiY29tLmJhaWR1LnNlYXJjaGJveCIsInNpZCI6IjMifSx7InBrZyI6ImNvbS5jdWJpYy5hdXRvaG9tZSIsInNpZCI6IjIifSx7InBrZyI6ImNvbS5qaW5nZG9uZy5hcHAubWFsbCIsInNpZCI6IjEifSx7InBrZyI6ImNvbS50YW9iYW8udGFvYmFvIiwic2lkIjoiNCJ9LHsicGtnIjoiY29tLmF1dG9uYXZpLm1pbmltYXAiLCJzaWQiOiI1In0seyJwa2ciOiJjb20uYWxpYmFiYS5hbmRyb2lkLnJpbWV0Iiwic2lkIjoiNiJ9LHsicGtnIjoiY29tLlVDTW9iaWxlIiwic2lkIjoiNyJ9LHsicGtnIjoiY29tLmVnLmFuZHJvaWQuQWxpcGF5R3Bob25lIiwic2lkIjoiOCJ9LHsicGtnIjoiY29tLnNhbmt1YWkubWVpdHVhbiIsInNpZCI6IjkifSx7InBrZyI6ImNvbS5zaW5hLndlaWJvIiwic2lkIjoiMTAifSx7InBrZyI6ImNvbS50YW9iYW8ubGl0ZXRhbyIsInNpZCI6IjExIn0seyJwa2ciOiJjb20udG1hbGwud2lyZWxlc3MiLCJzaWQiOiIxMiJ9LHsicGtnIjoiY29tLnRhb2Jhby5saXZlIiwic2lkIjoiMTMifSx7InBrZyI6ImNvbS56aGlodS5hbmRyb2lkIiwic2lkIjoiMTQifSx7InBrZyI6ImNvbS50ZW5jZW50LmthcmFva2UiLCJzaWQiOiIxNSJ9LHsicGtnIjoiY29tLnF1YXJrLmJyb3dzZXIiLCJzaWQiOiIxNiJ9LHsicGtnIjoiY29tLnNzLmFuZHJvaWQudWdjLmF3ZW1lIiwic2lkIjoiMTcifSx7InBrZyI6Im1lLmVsZSIsInNpZCI6IjE4In0seyJwa2ciOiJjb20uUXVuYXIiLCJzaWQiOiIxOSJ9LHsicGtnIjoiY29tLnh1bm1lbmcucGluZHVvZHVvIiwic2lkIjoiMjAifSx7InBrZyI6ImNvbS5zbWlsZS5naWZtYWtlciIsInNpZCI6IjIxIn0seyJwa2ciOiJjb20ua3VhaXNob3UubmVidWxhIiwic2lkIjoiMjIifSx7InBrZyI6ImNvbS5zZHUuZGlkaS5wc25nZXIiLCJzaWQiOiIyMyJ9LHsicGtnIjoiY29tLmRpZGFwaW5jaGUuYm9va2luZyIsInNpZCI6IjI0In0seyJwa2ciOiJhaXIudHYuZG91eXUuYW5kcm9pZCIsInNpZCI6IjI1In0seyJwa2ciOiJjb20ueGluZ2luLnhocyIsInNpZCI6IjI2In0seyJwa2ciOiJjb20uamQuanJhcHAiLCJzaWQiOiIyNyJ9LHsicGtnIjoiY29tLnlvdWt1LnBob25lIiwic2lkIjoiMjgifSx7InBrZyI6ImNvbS5vcHBvLnN0b3JlIiwic2lkIjoiMjkifSx7InBrZyI6ImNvbS5oZXl0YXAubWFya2V0Iiwic2lkIjoiMzAifSx7InBrZyI6ImNvbS5tZncucm9hZGJvb2siLCJzaWQiOiIzMSJ9LHsicGtnIjoiY29tLnNoaXpodWFuZy5kdWFwcCIsInNpZCI6IjMyIn0seyJwa2ciOiJjb20uYWNoaWV2by52aXBzaG9wIiwic2lkIjoiMzMifSx7InBrZyI6ImNvbS50YW91Lm1haW1haSIsInNpZCI6IjM0In0seyJwa2ciOiJjb20uc2Fua3VhaS5tZWl0dWFuLnRha2VvdXRuZXciLCJzaWQiOiIzNSJ9LHsicGtnIjoiY29tLnNzLmFuZHJvaWQudWdjLmF3ZW1lLmxpdGUiLCJzaWQiOiIzNiJ9LHsicGtnIjoiY29tLmFuanVrZS5hbmRyb2lkLmFwcCIsInNpZCI6IjM3In0seyJwa2ciOiJjb20uc3MuYW5kcm9pZC5hcnRpY2xlLm5ld3MiLCJzaWQiOiIzOCJ9LHsicGtnIjoiY29tLnRhb2Jhby5pZGxlZmlzaCIsInNpZCI6IjM5In0seyJwa2ciOiJjb20udWNtb2JpbGUubGl0ZSIsInNpZCI6IjQwIn0seyJwa2ciOiJjb20ueXVuY2VudGVjaG5vbG9neS5nb2Q0c29uZ3MiLCJzaWQiOiI0MSJ9LHsicGtnIjoiY29tLmZ6eWNpbmMuY2hhcmdpbmdlYXJudHJlYXN1cmUiLCJzaWQiOiI0MiJ9LHsicGtnIjoiY29tLnl1bmNlbnRlY2x0ZC5icm93c2luZ2hpZ2giLCJzaWQiOiI0MyJ9LHsicGtnIjoiY29tLm5uZGNpbmMuZ3Vlc3Npbmdzb25nbmFtZSIsInNpZCI6IjQ0In0seyJwa2ciOiJjb20uZ3JlZW5wb2ludC5hbmRyb2lkLm1jMTAwODYuYWN0aXZpdHkiLCJzaWQiOiI0NSJ9LHsicGtnIjoiY29tLnd1ZGFva291LmhpcHBvIiwic2lkIjoiNDYifSx7InBrZyI6ImNvbS5jYWluaWFvLndpcmVsZXNzIiwic2lkIjoiNDcifSx7InBrZyI6ImNvbS50YW9iYW8udHJscCIsInNpZCI6IjQ4In0seyJwa2ciOiJjb20ua2FvbGEiLCJzaWQiOiI0OSJ9LHsicGtnIjoiY29tLnRhb2Jhby5tb2JpbGUuZGlwZWwiLCJzaWQiOiI1MCJ9LHsicGtnIjoiY29tLnN1bmluZy5tb2JpbGUuZWJ1eSIsInNpZCI6IjUxIn0seyJwa2ciOiJjbi5hbWF6b24ubVNob3AuYW5kcm9pZCIsInNpZCI6IjUyIn0seyJwa2ciOiJjb20udGhlc3RvcmUubWFpbiIsInNpZCI6IjUzIn0seyJwa2ciOiJjb20uTW9iaWxlVGlja2V0Iiwic2lkIjoiNTQifSx7InBrZyI6ImNvbS5zaHVxaS5jb250cm9sbGVyIiwic2lkIjoiNTUifSx7InBrZyI6ImNvbS50YW9iYW8ubW9iaWxlLmRpcGVpIiwic2lkIjoiNTYifSx7InBrZyI6ImNvbS5xaXlpLnZpZGVvIiwic2lkIjoiNTcifSx7InBrZyI6ImN0cmlwLmFuZHJvaWQudmlldyIsInNpZCI6IjU4In0seyJwa2ciOiJjb20ubmV0ZWFzZS5jbG91ZG11c2ljIiwic2lkIjoiNTkifSx7InBrZyI6ImNvbS50aWFueWFuY2hhLnNreWV5ZSIsInNpZCI6IjYwIn0seyJwa2ciOiJjb20ua214cy5yZWFkZXIiLCJzaWQiOiI2MSJ9LHsicGtnIjoiY29tLnRhb2Jhby50cmlwIiwic2lkIjoiNjIifSx7InBrZyI6ImNvbS5hbGliYWJhLndpcmVsZXNzLmxzdHJldGFpbGVyIiwic2lkIjoiNjMifSx7InBrZyI6ImNvbS5tbWJhbmcubmVpZ2hib3Job29kIiwic2lkIjoiNjQifSx7InBrZyI6ImNvbS55YXlhLnpvbmUiLCJzaWQiOiI2NSJ9LHsicGtnIjoiY29tLmFsaWJhYmEud2lyZWxlc3MiLCJzaWQiOiI2NiJ9LHsicGtnIjoiY29tLmF1dG9uYXZpLm1pbmltYXAuY3VzdG9tIiwic2lkIjoiNjcifSx7InBrZyI6ImNvbS5rd2FpLnRoYW5vcyIsInNpZCI6IjY4In0seyJwa2ciOiJjb20ubGlhbmppYS5iZWlrZSIsInNpZCI6IjY5In0seyJwa2ciOiJjb20uYmFua2NvbW0uQmFua2NvbW0iLCJzaWQiOiI4MiJ9LHsicGtnIjoiY29tLnRhb2Jhby5ldGFvIiwic2lkIjoiODMifSx7InBrZyI6ImNvbS5kdW93YW4ubW9iaWxlIiwic2lkIjoiODQifSx7InBrZyI6ImNvbS5uZXRlYXNlLnlhbnh1YW4iLCJzaWQiOiI4NSJ9XSwiY2FuR2V0UGtnIjpmYWxzZSwiaXB2NiI6ZmFsc2UsImRvbWFpbiI6IntcInNka2xvZ1wiOlwiaHR0cDovL3Nka2xvZy56aGFuZ3l1eWlkb25nLmNuXCIsXCJzZGtcIjpcImh0dHA6Ly9zZGsuemhhbmd5dXlpZG9uZy5jblwifSIsInZlcnNpb24iOiIxNzQ1NTYxNDg2MzkwIiwic3NsIjpmYWxzZSwiZmlsdGVyTGV2ZWwiOjB9");
        return str != null ? new String(Base64.decode(str.substring(2), 0)) : "";
    }

    @Override // java.lang.Runnable
    public void run() throws JSONException {
        b();
    }

    private void a(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            String strC = k.c(jSONObject, "url");
            String strC2 = k.c(jSONObject, TKDownloadReason.KSAD_TK_MD5);
            boolean zG = k.g(jSONObject, "force");
            if (TextUtils.isEmpty(strC) || TextUtils.isEmpty(strC2)) {
                return;
            }
            com.octopus.ad.utils.a.a(this.f34006a, new a.b("liboctopus.so", str, strC, strC2, zG), new a.InterfaceC0760a() { // from class: com.octopus.ad.d.b.b.1
                @Override // com.octopus.ad.utils.a.InterfaceC0760a
                public void a(File file) {
                    f.d("OctopusAd", "onSuccess: " + file);
                }

                @Override // com.octopus.ad.utils.a.InterfaceC0760a
                public void a(Throwable th) {
                    f.d("OctopusAd", "onError: " + th.toString());
                }
            });
        }
    }
}
