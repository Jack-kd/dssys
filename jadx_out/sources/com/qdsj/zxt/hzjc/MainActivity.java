package com.qdsj.zxt.hzjc;

import android.os.Bundle;
import com.umeng.commonsdk.UMConfigure;
import io.flutter.embedding.android.FlutterActivity;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/qdsj/zxt/hzjc/MainActivity;", "Lio/flutter/embedding/android/FlutterActivity;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lkotlin/j;", "onCreate", "(Landroid/os/Bundle;)V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class MainActivity extends FlutterActivity {
    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        UMConfigure.preInit(this, "5ffede466a2a470e8f77e4a0", "新大师兄影视");
    }
}
