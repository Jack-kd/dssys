package com.androidquery.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import com.androidquery.AQuery;
import com.androidquery.callback.AbstractAjaxCallback;
import com.androidquery.callback.AjaxStatus;
import com.androidquery.util.AQUtility;
import com.androidquery.util.Constants;
import java.io.IOException;
import org.apache.http.HttpRequest;

/* loaded from: classes.dex */
public class GoogleHandle extends AccountHandle implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener {
    private Account acc;
    private Account[] accs;
    private Activity act;
    private AccountManager am;
    private String email;
    private String token;
    private String type;

    public class Task extends AsyncTask<String, String, Bundle> {
        private Task() {
        }

        @Override // android.os.AsyncTask
        public Bundle doInBackground(String... strArr) {
            try {
                return GoogleHandle.this.am.getAuthToken(GoogleHandle.this.acc, GoogleHandle.this.type, (Bundle) null, GoogleHandle.this.act, (AccountManagerCallback<Bundle>) null, (Handler) null).getResult();
            } catch (AuthenticatorException e2) {
                AQUtility.debug((Throwable) e2);
                return null;
            } catch (OperationCanceledException unused) {
                return null;
            } catch (IOException e3) {
                AQUtility.debug((Throwable) e3);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Bundle bundle) {
            if (bundle == null || !bundle.containsKey("authtoken")) {
                GoogleHandle googleHandle = GoogleHandle.this;
                googleHandle.failure(googleHandle.act, AjaxStatus.AUTH_ERROR, "rejected");
            } else {
                GoogleHandle.this.token = bundle.getString("authtoken");
                GoogleHandle googleHandle2 = GoogleHandle.this;
                googleHandle2.success(googleHandle2.act);
            }
        }
    }

    public GoogleHandle(Activity activity, String str, String str2) {
        str2 = Constants.ACTIVE_ACCOUNT.equals(str2) ? getActiveAccount(activity) : str2;
        this.act = activity;
        this.type = str.substring(2);
        this.email = str2;
        this.am = AccountManager.get(activity);
    }

    private void accountDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.act);
        Account[] accountsByType = this.am.getAccountsByType("com.google");
        this.accs = accountsByType;
        int length = accountsByType.length;
        if (length == 1) {
            auth(accountsByType[0]);
            return;
        }
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            strArr[i2] = this.accs[i2].name;
        }
        builder.setItems(strArr, this);
        builder.setOnCancelListener(this);
        new AQuery(this.act).show(builder.create());
    }

    public static String getActiveAccount(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString(Constants.ACTIVE_ACCOUNT, null);
    }

    public static void setActiveAccount(Context context, String str) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putString(Constants.ACTIVE_ACCOUNT, str).commit();
    }

    @Override // com.androidquery.auth.AccountHandle
    public void applyToken(AbstractAjaxCallback<?, ?> abstractAjaxCallback, HttpRequest httpRequest) {
        httpRequest.addHeader("Authorization", "GoogleLogin auth=" + this.token);
    }

    @Override // com.androidquery.auth.AccountHandle
    public void auth() {
        if (this.email == null) {
            accountDialog();
            return;
        }
        for (Account account : this.am.getAccountsByType("com.google")) {
            if (this.email.equals(account.name)) {
                auth(account);
                return;
            }
        }
    }

    @Override // com.androidquery.auth.AccountHandle
    public boolean authenticated() {
        return this.token != null;
    }

    @Override // com.androidquery.auth.AccountHandle
    public boolean expired(AbstractAjaxCallback<?, ?> abstractAjaxCallback, AjaxStatus ajaxStatus) {
        int code = ajaxStatus.getCode();
        return code == 401 || code == 403;
    }

    @Override // com.androidquery.auth.AccountHandle
    public String getCacheUrl(String str) {
        return str + "#" + this.token;
    }

    public String getType() {
        return this.type;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        failure(this.act, AjaxStatus.AUTH_ERROR, "cancel");
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        Account account = this.accs[i2];
        AQUtility.debug("acc", account.name);
        setActiveAccount(this.act, account.name);
        auth(account);
    }

    @Override // com.androidquery.auth.AccountHandle
    public boolean reauth(AbstractAjaxCallback<?, ?> abstractAjaxCallback) throws OperationCanceledException, IOException, AuthenticatorException {
        this.am.invalidateAuthToken(this.acc.type, this.token);
        try {
            String strBlockingGetAuthToken = this.am.blockingGetAuthToken(this.acc, this.type, true);
            this.token = strBlockingGetAuthToken;
            AQUtility.debug("re token", strBlockingGetAuthToken);
        } catch (Exception e2) {
            AQUtility.debug((Throwable) e2);
            this.token = null;
        }
        return this.token != null;
    }

    private void auth(Account account) {
        this.acc = account;
        new Task().execute(new String[0]);
    }
}
