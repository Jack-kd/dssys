.class public Lcom/ubix/ssp/ad/e/x/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ubix/ssp/ad/e/x/b; = null

.field public static final b:Ljava/lang/String; = "b"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/x/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/x/b;->a:Lcom/ubix/ssp/ad/e/x/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/ubix/ssp/ad/e/x/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/e/x/b;->a:Lcom/ubix/ssp/ad/e/x/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/e/x/b;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/x/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ubix/ssp/ad/e/x/b;->a:Lcom/ubix/ssp/ad/e/x/b;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/ubix/ssp/ad/e/x/b;->a:Lcom/ubix/ssp/ad/e/x/b;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/x/a$f;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ubix/ssp/ad/e/x/g;->b()Lcom/ubix/ssp/ad/e/x/g;

    move-result-object v0

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/x/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/x/a;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/ubix/ssp/ad/e/x/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "loadInitUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/x/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/d;Lcom/ubix/ssp/ad/e/x/a$e;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/ubix/ssp/ad/e/x/g;->b()Lcom/ubix/ssp/ad/e/x/g;

    move-result-object v0

    invoke-static {}, Lcom/ubix/ssp/ad/e/x/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/d;Lcom/ubix/ssp/ad/e/x/a;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/ubix/ssp/ad/e/x/b;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slot id:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   loadAdUrl: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ubix/ssp/ad/e/x/f;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
