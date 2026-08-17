package com.meishu.sdk.core.safe;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.meishu.sdk.core.utils.LogUtil;

/* loaded from: classes4.dex */
public class SafeAppCompatActivity extends AppCompatActivity implements View.OnClickListener {
    private static final String TAG = "SafeAppCompatActivity";

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        try {
            safeOnActivityResult(i2, i3, intent);
        } catch (Throwable th) {
            th.printStackTrace();
            LogUtil.e(TAG, "onActivityResult error. finish");
            com.meishu.sdk.core.exception.a.a(th);
            safeFinish();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onAttachedToWindow() {
        try {
            safeOnAttachedToWindow();
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            safeOnClick(view);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public final void onCreate(Bundle bundle) {
        try {
            safeOnCreate(bundle);
        } catch (Throwable th) {
            th.printStackTrace();
            LogUtil.e(TAG, "onCreate error. finish");
            com.meishu.sdk.core.exception.a.a(th);
            safeFinish();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public final void onDestroy() {
        try {
            safeOnDestroy();
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        try {
            safeOnDetachedFromWindow();
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        try {
            return safeOnKeyDown(i2, keyEvent);
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
            return super.onKeyDown(i2, keyEvent);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public final void onPause() {
        try {
            safeOnPause();
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public final void onResume() {
        try {
            safeOnResume();
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    public void safeFinish() {
        try {
            finish();
        } catch (Throwable th) {
            th.printStackTrace();
            com.meishu.sdk.core.exception.a.a(th);
        }
    }

    public void safeOnActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
    }

    public void safeOnAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void safeOnClick(View view) {
    }

    public void safeOnCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void safeOnDestroy() {
        super.onDestroy();
    }

    public void safeOnDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public boolean safeOnKeyDown(int i2, KeyEvent keyEvent) {
        return super.onKeyDown(i2, keyEvent);
    }

    public void safeOnPause() {
        super.onPause();
    }

    public void safeOnResume() {
        super.onResume();
    }
}
