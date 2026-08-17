.class public Lcom/octopus/ad/internal/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/octopus/ad/internal/c/r;


# instance fields
.field public a:Lcom/octopus/ad/a/g$d;

.field public b:Lcom/octopus/ad/a/g$c;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/octopus/ad/a/g$c;->e:Lcom/octopus/ad/a/g$c;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/octopus/ad/internal/c/r;->b:Lcom/octopus/ad/a/g$c;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lcom/octopus/ad/internal/c/r;
    .locals 3

    .line 1
    const-class v0, Lcom/octopus/ad/internal/c/r;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/octopus/ad/internal/c/r;->d:Lcom/octopus/ad/internal/c/r;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/octopus/ad/internal/c/r;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/octopus/ad/internal/c/r;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/octopus/ad/internal/c/r;->d:Lcom/octopus/ad/internal/c/r;

    .line 14
    .line 15
    sget-object v1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    .line 16
    .line 17
    sget v2, Lcom/octopus/ad/R$string;->init:I

    .line 18
    .line 19
    invoke-static {v2}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lcom/octopus/ad/internal/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    sget-object v1, Lcom/octopus/ad/internal/c/r;->d:Lcom/octopus/ad/internal/c/r;

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method
