.class public Lcom/ubix/ssp/ad/core/monitor/data/c/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ubix/ssp/ad/core/monitor/data/c/c;


# instance fields
.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".UbixDataContentProvider/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "events"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/c;->b:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "data_collect"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/c;->c:Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ubix/ssp/ad/core/monitor/data/c/c;
    .locals 1

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/core/monitor/data/c/c;->a:Lcom/ubix/ssp/ad/core/monitor/data/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/core/monitor/data/c/c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/core/monitor/data/c/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ubix/ssp/ad/core/monitor/data/c/c;->a:Lcom/ubix/ssp/ad/core/monitor/data/c/c;

    :cond_0
    sget-object p0, Lcom/ubix/ssp/ad/core/monitor/data/c/c;->a:Lcom/ubix/ssp/ad/core/monitor/data/c/c;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/c;->b:Landroid/net/Uri;

    return-object v0
.end method
