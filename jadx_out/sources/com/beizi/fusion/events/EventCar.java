package com.beizi.fusion.events;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.d.i;
import com.baidu.mobads.sdk.internal.bn;
import com.beizi.fusion.j2;
import com.beizi.fusion.k4;
import com.beizi.fusion.mh;
import com.beizi.fusion.model.Messenger;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.model.ResponseInfo;
import com.beizi.fusion.o9;
import com.beizi.fusion.ro;
import com.beizi.fusion.tg;
import com.beizi.fusion.v8;
import com.beizi.fusion.w3;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class EventCar {

    /* renamed from: e, reason: collision with root package name */
    private static EventCar f13807e;

    /* renamed from: a, reason: collision with root package name */
    private Context f13808a;

    /* renamed from: b, reason: collision with root package name */
    private List f13809b;

    /* renamed from: c, reason: collision with root package name */
    private long f13810c = 128;

    /* renamed from: d, reason: collision with root package name */
    private long f13811d = bn.f11192e;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ EventBean f13812a;

        public a(EventBean eventBean) {
            this.f13812a = eventBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            EventCar.this.a(this.f13812a);
        }
    }

    private EventCar(Context context) {
        this.f13808a = context;
        RequestInfo requestInfoInit = RequestInfo.getInstance(context).init();
        if (requestInfoInit.isInit()) {
            return;
        }
        requestInfoInit.init();
    }

    public static EventCar getInstance(Context context) {
        if (f13807e == null) {
            synchronized (EventCar.class) {
                try {
                    if (f13807e == null) {
                        f13807e = new EventCar(context);
                    }
                } finally {
                }
            }
        }
        return f13807e;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doUpLoadLogs() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.events.EventCar.doUpLoadLogs():void");
    }

    public void goRoad(EventBean eventBean) {
        w3.b().f().execute(new a(eventBean));
    }

    public void goRoadWithoutThread(EventBean eventBean) {
        a(eventBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(EventBean eventBean) {
        try {
            ResponseInfo responseInfo = ResponseInfo.getInstance(this.f13808a);
            String strA = a(eventBean.getEventCode());
            if (responseInfo.getMessenger() != null) {
                this.f13809b = responseInfo.getMessenger().getEvents();
                this.f13810c = Long.valueOf(responseInfo.getMessenger().getFileMaxSize()).longValue();
                this.f13811d = responseInfo.getMessenger().getExpireTime();
                List list = this.f13809b;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (int i2 = 0; i2 < this.f13809b.size(); i2++) {
                    Messenger.EventsBean eventsBean = (Messenger.EventsBean) this.f13809b.get(i2);
                    List<String> codes = eventsBean.getCodes();
                    if (codes != null && codes.size() > 0) {
                        for (int i3 = 0; i3 < codes.size(); i3++) {
                            if (!TextUtils.isEmpty(eventBean.getEventCode()) && !TextUtils.isEmpty(codes.get(i3)) && (eventBean.getEventCode().equals(codes.get(i3)) || strA.equals(codes.get(i3)))) {
                                if (eventsBean.getIsOnline().equals("1")) {
                                    eventBean.setUrl(eventsBean.getUploadUrl());
                                    a(eventsBean, eventBean);
                                } else {
                                    a(eventsBean, eventBean, true);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return str.substring(0, str.indexOf(i.f2495E) + 1) + "*";
    }

    private void a(Messenger.EventsBean eventsBean, EventBean eventBean) {
        String strA;
        if (eventBean != null) {
            try {
                if (TextUtils.isEmpty(eventBean.getUrl())) {
                    return;
                }
                String url = eventBean.getUrl();
                if ("590.200".equalsIgnoreCase(eventBean.getEventCode())) {
                    url = eventBean.getTaskReqUrl();
                }
                int iIndexOf = url.indexOf("?");
                String strSubstring = url.substring(0, iIndexOf);
                String strSubstring2 = url.substring(iIndexOf + 1);
                if ("590.200".equalsIgnoreCase(eventBean.getEventCode())) {
                    strA = ro.a(this.f13808a, strSubstring2, eventBean, eventBean.getAppLinks());
                } else {
                    strA = ro.a(this.f13808a, strSubstring2, eventBean);
                }
                String strB = j2.b(tg.b(), v8.a(strA));
                if (strB != null) {
                    String strA2 = o9.a(strSubstring, strB.getBytes());
                    if (!TextUtils.isEmpty(strA2)) {
                        if (new JSONObject(strA2).optInt("code") != 200) {
                            a(eventsBean, eventBean, true);
                            return;
                        }
                        return;
                    }
                    a(eventsBean, eventBean, true);
                }
            } catch (JSONException | Exception unused) {
            }
        }
    }

    private static String a(File file) throws IOException {
        StringBuilder sb = new StringBuilder();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
            fileInputStream.close();
        } catch (Exception unused) {
        }
        return sb.toString();
    }

    private void a(Messenger.EventsBean eventsBean, EventBean eventBean, boolean z2) throws IOException {
        String uploadUrl;
        eventBean.getEventCode();
        try {
            File fileB = k4.b(this.f13808a);
            mh.a("BeiZis", "doOffline storagePath == " + fileB);
            if (fileB != null) {
                if (z2) {
                    uploadUrl = eventsBean.getOfflineUrl();
                } else {
                    uploadUrl = eventsBean.getUploadUrl();
                }
                String strSubstring = uploadUrl.substring(0, uploadUrl.indexOf("?"));
                String strB = j2.b(tg.b(), ro.a(this.f13808a, uploadUrl.substring(uploadUrl.indexOf("?") + 1), eventBean));
                String str = fileB.getPath() + "/BeiZi/offline/" + ro.a(eventsBean.toString()) + ServiceReference.DELIMITER;
                File file = new File(str);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, "10000.txt");
                synchronized (EventCar.class) {
                    try {
                        if (!file2.exists()) {
                            file2.createNewFile();
                            FileWriter fileWriter = new FileWriter(file2, true);
                            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                            bufferedWriter.write(strSubstring);
                            bufferedWriter.newLine();
                            bufferedWriter.close();
                            fileWriter.close();
                        }
                    } finally {
                    }
                }
                long jLongValue = 0;
                for (File file3 : file.listFiles()) {
                    String strSubstring2 = file3.getName().substring(0, file3.getName().indexOf(i.f2495E));
                    if (Long.valueOf(strSubstring2).longValue() > jLongValue) {
                        jLongValue = Long.valueOf(strSubstring2).longValue();
                    }
                }
                if (jLongValue != 0 && jLongValue != 10000) {
                    File file4 = new File(str + jLongValue + ".txt");
                    if (file4.exists() && file4.length() < this.f13810c * 1000) {
                        FileWriter fileWriter2 = new FileWriter(file4, true);
                        BufferedWriter bufferedWriter2 = new BufferedWriter(fileWriter2);
                        bufferedWriter2.write(strB);
                        bufferedWriter2.newLine();
                        bufferedWriter2.close();
                        fileWriter2.close();
                        file4.renameTo(new File(file, System.currentTimeMillis() + ".txt"));
                        return;
                    }
                }
                File file5 = new File(file, System.currentTimeMillis() + ".txt");
                file5.createNewFile();
                FileWriter fileWriter3 = new FileWriter(file5, true);
                BufferedWriter bufferedWriter3 = new BufferedWriter(fileWriter3);
                bufferedWriter3.write(strB);
                bufferedWriter3.newLine();
                bufferedWriter3.close();
                fileWriter3.close();
            }
        } catch (Throwable unused) {
        }
    }
}
