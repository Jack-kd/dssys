package t;

import android.content.Intent;
import com.baidu.oauth.sdkbqt.view.WebViewActivity;
import org.json.JSONException;
import q.AbstractC1756d;

/* loaded from: classes2.dex */
public class g extends AbstractC1756d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebViewActivity f52773a;

    public g(WebViewActivity webViewActivity) {
        this.f52773a = webViewActivity;
    }

    @Override // q.InterfaceC1754b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onSuccess(s.d dVar) {
        Intent intent = new Intent();
        intent.putExtra("extra_oauth_result_json", dVar.f52747o.toString());
        this.f52773a.f11846g = true;
        this.f52773a.setResult(-1, intent);
        this.f52773a.finish();
    }

    @Override // q.InterfaceC1754b
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void onFailure(s.d dVar) throws JSONException {
        this.f52773a.setResult(0, o.h.c(dVar.a(), dVar.b()));
        this.f52773a.finish();
    }
}
