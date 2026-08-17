package com.meishu.sdk.core.view;

import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.view.Window;

/* loaded from: classes4.dex */
public class NoNavigationDialog extends AlertDialog {
    private Window window;

    public NoNavigationDialog(Context context) {
        super(context);
        this.window = getWindow();
    }

    private void clearFocusNotAle(Window window) {
        window.clearFlags(8);
    }

    private void focusNotAle(Window window) {
        window.setFlags(8, 8);
    }

    public void hideNavigationBar(final Window window) {
        window.getDecorView().setSystemUiVisibility(2);
        window.getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.meishu.sdk.core.view.NoNavigationDialog.1
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i2) {
                window.getDecorView().setSystemUiVisibility(5894);
            }
        });
    }

    @Override // android.app.Dialog
    public void show() {
        focusNotAle(this.window);
        super.show();
        hideNavigationBar(this.window);
        clearFocusNotAle(this.window);
    }

    public NoNavigationDialog(Context context, int i2) {
        super(context, i2);
    }
}
