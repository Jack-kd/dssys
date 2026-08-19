package com.beizi.fusion;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.beizi.fusion.C1135g;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.ConfigResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics.task.TaskUrlModel;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class fg extends jb {

    public static class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final Context f13866a;

        /* renamed from: b, reason: collision with root package name */
        private final List f13867b;

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            private final TaskUrlModel f13868a;

            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f13867b != null) {
                    a(this.f13868a);
                }
            }

            private a(TaskUrlModel taskUrlModel) {
                this.f13868a = taskUrlModel;
            }

            private void a(TaskUrlModel taskUrlModel) {
                hb hbVar;
                String implement = taskUrlModel.getImplement();
                long jB = b(taskUrlModel);
                final String url = taskUrlModel.getUrl();
                if (TextUtils.isEmpty(url)) {
                    return;
                }
                Runnable runnable = fm.GET.b().equalsIgnoreCase(implement) ? new Runnable() { // from class: com.beizi.fusion.E
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12525b.a(url);
                    }
                } : fm.POST.b().equalsIgnoreCase(implement) ? new Runnable() { // from class: com.beizi.fusion.F
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12530b.b(url);
                    }
                } : "WEBVIEW".equalsIgnoreCase(implement) ? new Runnable() { // from class: com.beizi.fusion.G
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12532b.c(url);
                    }
                } : "DEEPLINK".equalsIgnoreCase(implement) ? new Runnable() { // from class: com.beizi.fusion.H
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12534b.d(url);
                    }
                } : null;
                if (runnable == null || jB < 0 || (hbVar = (hb) fn.a().b(b.this.f13866a)) == null) {
                    return;
                }
                hbVar.a(runnable, jB, TimeUnit.MILLISECONDS);
            }

            private long b(TaskUrlModel taskUrlModel) {
                return taskUrlModel.getDelay() + new Random(System.currentTimeMillis()).nextInt((int) taskUrlModel.getRandomTime()) + 1;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void c(String str) {
                zf.a(b.this.f13866a, str, (Bundle) null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void d(String str) {
                zf.a(b.this.f13866a, str);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void b(String str) {
                ((w9) o0.a().b(b.this.f13866a)).a(str, "", null);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void a(String str) {
                ((w9) o0.a().b(b.this.f13866a)).a(str, null);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            List list = this.f13867b;
            if (list == null || list.isEmpty()) {
                return;
            }
            Iterator it = this.f13867b.iterator();
            while (it.hasNext()) {
                a((TaskUrlModel) it.next());
            }
        }

        private b(Context context, List list) {
            this.f13866a = context.getApplicationContext();
            this.f13867b = list;
        }

        private void a(TaskUrlModel taskUrlModel) {
            if (taskUrlModel != null) {
                long delay = taskUrlModel.getDelay();
                hb hbVar = (hb) fn.a().b(this.f13866a);
                if (hbVar != null) {
                    hbVar.a(new a(taskUrlModel), delay, TimeUnit.MILLISECONDS);
                }
            }
        }
    }

    public fg(Context context) {
        super(context);
    }

    @Override // com.beizi.fusion.jb
    public void a(ConfigResponseModel configResponseModel, C1135g.a aVar) {
        List<TaskUrlModel> taskModels;
        if (configResponseModel == null || configResponseModel.getStatistics() == null || (taskModels = configResponseModel.getStatistics().getTaskModels()) == null || taskModels.isEmpty()) {
            return;
        }
        rm.a("InvokeRequestByUpdate", "配置更新, 检查是否存在上报...");
        hb hbVar = (hb) fn.a().b(this.f14656a);
        if (hbVar != null) {
            hbVar.a(new b(this.f14656a, taskModels));
        }
    }
}
