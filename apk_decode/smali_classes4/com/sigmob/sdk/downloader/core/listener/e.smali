.class public abstract Lcom/sigmob/sdk/downloader/core/listener/e;
.super Lcom/sigmob/sdk/downloader/core/listener/d;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/listener/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/assist/c;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/core/listener/e;-><init>(Lcom/sigmob/sdk/downloader/core/listener/assist/c;)V

    return-void
.end method

.method private constructor <init>(Lcom/sigmob/sdk/downloader/core/listener/assist/c;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;

    new-instance v1, Lcom/sigmob/sdk/downloader/core/listener/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/downloader/core/listener/e$a;-><init>(Lcom/sigmob/sdk/downloader/core/listener/e$1;)V

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/b;-><init>(Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;)V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/core/listener/d;-><init>(Lcom/sigmob/sdk/downloader/core/listener/assist/b;)V

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/downloader/core/listener/assist/c;->a(Lcom/sigmob/sdk/downloader/core/listener/assist/c$a;)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/listener/d;->a(Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sigmob/sdk/downloader/f;ILcom/sigmob/sdk/downloader/core/breakpoint/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/sigmob/sdk/downloader/f;J)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;ZLcom/sigmob/sdk/downloader/core/listener/assist/b$c;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final d(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 0

    return-void
.end method
