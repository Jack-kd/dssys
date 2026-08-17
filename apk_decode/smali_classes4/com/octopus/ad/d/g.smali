.class public Lcom/octopus/ad/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/octopus/ad/d/g;


# instance fields
.field public a:Lcom/octopus/ad/d/h;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "OnLineState"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/octopus/ad/d/g;->b:Ljava/lang/String;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "OnLineState init failed,because context cann\'t be null "

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/octopus/ad/d/h;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/octopus/ad/d/h;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/octopus/ad/d/g;->a:Lcom/octopus/ad/d/h;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/octopus/ad/d/h;->a(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/octopus/ad/d/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/d/g;->c:Lcom/octopus/ad/d/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/octopus/ad/d/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/octopus/ad/d/g;->c:Lcom/octopus/ad/d/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/octopus/ad/d/g;

    invoke-direct {v1, p0}, Lcom/octopus/ad/d/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/octopus/ad/d/g;->c:Lcom/octopus/ad/d/g;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_2
    sget-object p0, Lcom/octopus/ad/d/g;->c:Lcom/octopus/ad/d/g;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/octopus/ad/d/f;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/d/g;->a:Lcom/octopus/ad/d/h;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/octopus/ad/d/h;->a(Lcom/octopus/ad/d/f;)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/d/g;->b:Ljava/lang/String;

    const-string v0, "please init OnLineState first ,you can init it with \'OnLineState.init(context);\' in you BaseApplication "

    invoke-static {p1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
