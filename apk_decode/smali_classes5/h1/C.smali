.class public final synthetic Lh1/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh1/k;

.field public final synthetic c:Lio/flutter/plugin/common/MethodCall;

.field public final synthetic d:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lh1/k;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/C;->b:Lh1/k;

    iput-object p2, p0, Lh1/C;->c:Lio/flutter/plugin/common/MethodCall;

    iput-object p3, p0, Lh1/C;->d:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh1/C;->b:Lh1/k;

    iget-object v1, p0, Lh1/C;->c:Lio/flutter/plugin/common/MethodCall;

    iget-object v2, p0, Lh1/C;->d:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0, v1, v2}, Lcom/tekartik/sqflite/SqflitePlugin;->c(Lh1/k;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method
