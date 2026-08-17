package com.androidquery.auth;

import android.content.Context;
import com.androidquery.callback.AbstractAjaxCallback;
import com.androidquery.callback.AjaxStatus;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.http.HttpRequest;

/* loaded from: classes.dex */
public abstract class AccountHandle {
    private LinkedHashSet<AbstractAjaxCallback<?, ?>> callbacks;

    public void applyToken(AbstractAjaxCallback<?, ?> abstractAjaxCallback, HttpURLConnection httpURLConnection) {
    }

    public abstract void auth();

    public synchronized void auth(AbstractAjaxCallback<?, ?> abstractAjaxCallback) {
        try {
            LinkedHashSet<AbstractAjaxCallback<?, ?>> linkedHashSet = this.callbacks;
            if (linkedHashSet == null) {
                LinkedHashSet<AbstractAjaxCallback<?, ?>> linkedHashSet2 = new LinkedHashSet<>();
                this.callbacks = linkedHashSet2;
                linkedHashSet2.add(abstractAjaxCallback);
                auth();
            } else {
                linkedHashSet.add(abstractAjaxCallback);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract boolean authenticated();

    public abstract boolean expired(AbstractAjaxCallback<?, ?> abstractAjaxCallback, AjaxStatus ajaxStatus);

    public synchronized void failure(Context context, int i2, String str) {
        try {
            LinkedHashSet<AbstractAjaxCallback<?, ?>> linkedHashSet = this.callbacks;
            if (linkedHashSet != null) {
                Iterator<AbstractAjaxCallback<?, ?>> it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    it.next().failure(i2, str);
                }
                this.callbacks = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public String getCacheUrl(String str) {
        return str;
    }

    public String getNetworkUrl(String str) {
        return str;
    }

    public abstract boolean reauth(AbstractAjaxCallback<?, ?> abstractAjaxCallback);

    public synchronized void success(Context context) {
        try {
            LinkedHashSet<AbstractAjaxCallback<?, ?>> linkedHashSet = this.callbacks;
            if (linkedHashSet != null) {
                Iterator<AbstractAjaxCallback<?, ?>> it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    it.next().async(context);
                }
                this.callbacks = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void unauth() {
    }

    public void applyToken(AbstractAjaxCallback<?, ?> abstractAjaxCallback, HttpRequest httpRequest) {
    }
}
