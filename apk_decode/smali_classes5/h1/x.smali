.class public final synthetic Lh1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/flutter/plugin/common/MethodCall;

.field public final synthetic c:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic d:Lh1/k;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lh1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/x;->b:Lio/flutter/plugin/common/MethodCall;

    iput-object p2, p0, Lh1/x;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p3, p0, Lh1/x;->d:Lh1/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh1/x;->b:Lio/flutter/plugin/common/MethodCall;

    iget-object v1, p0, Lh1/x;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v2, p0, Lh1/x;->d:Lh1/k;

    invoke-static {v0, v1, v2}, Lcom/tekartik/sqflite/SqflitePlugin;->e(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lh1/k;)V

    return-void
.end method
