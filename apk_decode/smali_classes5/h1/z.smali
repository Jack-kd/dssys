.class public final synthetic Lh1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic e:Ljava/lang/Boolean;

.field public final synthetic f:Lh1/k;

.field public final synthetic g:Lio/flutter/plugin/common/MethodCall;

.field public final synthetic h:Z

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Boolean;Lh1/k;Lio/flutter/plugin/common/MethodCall;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lh1/z;->b:Z

    iput-object p2, p0, Lh1/z;->c:Ljava/lang/String;

    iput-object p3, p0, Lh1/z;->d:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p4, p0, Lh1/z;->e:Ljava/lang/Boolean;

    iput-object p5, p0, Lh1/z;->f:Lh1/k;

    iput-object p6, p0, Lh1/z;->g:Lio/flutter/plugin/common/MethodCall;

    iput-boolean p7, p0, Lh1/z;->h:Z

    iput p8, p0, Lh1/z;->i:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lh1/z;->b:Z

    iget-object v1, p0, Lh1/z;->c:Ljava/lang/String;

    iget-object v2, p0, Lh1/z;->d:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v3, p0, Lh1/z;->e:Ljava/lang/Boolean;

    iget-object v4, p0, Lh1/z;->f:Lh1/k;

    iget-object v5, p0, Lh1/z;->g:Lio/flutter/plugin/common/MethodCall;

    iget-boolean v6, p0, Lh1/z;->h:Z

    iget v7, p0, Lh1/z;->i:I

    invoke-static/range {v0 .. v7}, Lcom/tekartik/sqflite/SqflitePlugin;->d(ZLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Boolean;Lh1/k;Lio/flutter/plugin/common/MethodCall;ZI)V

    return-void
.end method
