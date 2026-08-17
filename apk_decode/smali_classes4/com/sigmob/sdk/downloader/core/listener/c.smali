.class public abstract Lcom/sigmob/sdk/downloader/core/listener/c;
.super Lcom/sigmob/sdk/downloader/core/listener/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/listener/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/sigmob/sdk/downloader/f;)V
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;)V
    .locals 1

    .line 1
    sget-object p4, Lcom/sigmob/sdk/downloader/core/listener/c$1;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Don\'t support "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadListener3"

    invoke-static {p2, p1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/listener/c;->d(Lcom/sigmob/sdk/downloader/f;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1, p3}, Lcom/sigmob/sdk/downloader/core/listener/c;->a(Lcom/sigmob/sdk/downloader/f;Ljava/lang/Exception;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/listener/c;->c(Lcom/sigmob/sdk/downloader/f;)V

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/listener/c;->a(Lcom/sigmob/sdk/downloader/f;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/listener/assist/a$b;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/listener/c;->b(Lcom/sigmob/sdk/downloader/f;)V

    return-void
.end method

.method public abstract a(Lcom/sigmob/sdk/downloader/f;Ljava/lang/Exception;)V
.end method

.method public abstract b(Lcom/sigmob/sdk/downloader/f;)V
.end method

.method public abstract c(Lcom/sigmob/sdk/downloader/f;)V
.end method

.method public abstract d(Lcom/sigmob/sdk/downloader/f;)V
.end method
