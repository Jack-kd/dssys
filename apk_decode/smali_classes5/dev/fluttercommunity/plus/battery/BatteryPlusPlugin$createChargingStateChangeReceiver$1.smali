.class public final Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin$createChargingStateChangeReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin;->e(Lio/flutter/plugin/common/EventChannel$EventSink;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "dev/fluttercommunity/plus/battery/BatteryPlusPlugin$createChargingStateChangeReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Lkotlin/j;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "battery_plus_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin;

.field public final synthetic b:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method public constructor <init>(Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin$createChargingStateChangeReceiver$1;->a:Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin;

    .line 2
    .line 3
    iput-object p2, p0, Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin$createChargingStateChangeReceiver$1;->b:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "status"

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object p2, p0, Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin$createChargingStateChangeReceiver$1;->a:Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin;

    .line 19
    .line 20
    iget-object v0, p0, Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin$createChargingStateChangeReceiver$1;->b:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 21
    .line 22
    invoke-static {p2, p1}, Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin;->a(Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p2, v0, p1}, Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin;->b(Ldev/fluttercommunity/plus/battery/BatteryPlusPlugin;Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
