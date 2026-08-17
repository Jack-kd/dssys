.class public final synthetic Lio/flutter/plugins/webviewflutter/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/T;->a:Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;

    return-void
.end method


# virtual methods
.method public final onMessage(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/T;->a:Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;

    invoke-static {v0, p1, p2}, Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage$Companion;->a(Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method
