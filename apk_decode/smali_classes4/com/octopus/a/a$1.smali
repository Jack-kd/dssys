.class Lcom/octopus/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/a/a;->b(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/octopus/a/a;


# direct methods
.method public constructor <init>(Lcom/octopus/a/a;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/a/a$1;->c:Lcom/octopus/a/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/a/a$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/octopus/a/a$1;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/a/a$1;->c:Lcom/octopus/a/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/octopus/a/a$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/octopus/a/a$1;->b:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/octopus/a/a;->a(Lcom/octopus/a/a;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    const-string v1, "CrashHandler"

    .line 13
    .line 14
    const-string v2, "A Throwable Caught"

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
