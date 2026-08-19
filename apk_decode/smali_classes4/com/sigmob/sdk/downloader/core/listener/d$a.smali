.class Lcom/sigmob/sdk/downloader/core/listener/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/listener/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/e$b<",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;-><init>(I)V

    return-object v0
.end method

.method public synthetic b(I)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/listener/d$a;->a(I)Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;

    move-result-object p1

    return-object p1
.end method
