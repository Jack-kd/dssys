.class public Lcom/tekartik/sqflite/SqflitePlugin$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tekartik/sqflite/SqflitePlugin;->w(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh1/k;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic e:Lcom/tekartik/sqflite/SqflitePlugin;


# direct methods
.method public constructor <init>(Lcom/tekartik/sqflite/SqflitePlugin;Lh1/k;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin$b;->e:Lcom/tekartik/sqflite/SqflitePlugin;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tekartik/sqflite/SqflitePlugin$b;->b:Lh1/k;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tekartik/sqflite/SqflitePlugin$b;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/tekartik/sqflite/SqflitePlugin$b;->d:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/tekartik/sqflite/SqflitePlugin;->k()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/tekartik/sqflite/SqflitePlugin$b;->b:Lh1/k;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/tekartik/sqflite/SqflitePlugin$b;->e:Lcom/tekartik/sqflite/SqflitePlugin;

    .line 11
    .line 12
    invoke-static {v2, v1}, Lcom/tekartik/sqflite/SqflitePlugin;->i(Lcom/tekartik/sqflite/SqflitePlugin;Lh1/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    :try_start_1
    sget v1, Lcom/tekartik/sqflite/SqflitePlugin;->h:I

    .line 19
    .line 20
    invoke-static {v1}, Lh1/s;->c(I)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/tekartik/sqflite/SqflitePlugin$b;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Lh1/k;->p(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v1

    .line 30
    :try_start_2
    const-string v2, "Sqflite"

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "error "

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " while closing database "

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/tekartik/sqflite/SqflitePlugin;->j()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin$b;->d:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    throw v1
.end method
