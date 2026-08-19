.class public abstract Lcom/ubix/ssp/ad/e/x/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/x/a$f;,
        Lcom/ubix/ssp/ad/e/x/a$e;,
        Lcom/ubix/ssp/ad/e/x/a$d;,
        Lcom/ubix/ssp/ad/e/x/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ubix/ssp/ad/e/x/a;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/x/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ubix/ssp/ad/e/x/a$a;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/x/a$a;-><init>(Lcom/ubix/ssp/ad/e/x/a;Lcom/ubix/ssp/ad/e/x/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/y/a/e;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/x/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/ubix/ssp/ad/e/x/d;)V
.end method

.method public abstract c(Lcom/ubix/ssp/ad/e/x/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/x/d;",
            ")TT;"
        }
    .end annotation
.end method

.method public d(Lcom/ubix/ssp/ad/e/x/d;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/x/a;->c(Lcom/ubix/ssp/ad/e/x/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/ubix/ssp/ad/e/x/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ubix/ssp/ad/e/x/a$b;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/x/a$b;-><init>(Lcom/ubix/ssp/ad/e/x/a;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
