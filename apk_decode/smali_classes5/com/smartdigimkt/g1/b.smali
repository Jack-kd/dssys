.class public abstract synthetic Lcom/smartdigimkt/g1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(I)Ljava/lang/String;
    .locals 2

    const-string v0, "image/jpeg"

    const-string v1, "text/html"

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    return-object v1

    :pswitch_1
    const-string p0, "image/gif"

    return-object p0

    :pswitch_2
    const-string p0, "image/webp"

    return-object p0

    :pswitch_3
    const-string p0, "image/png"

    return-object p0

    :pswitch_4
    return-object v0

    :pswitch_5
    const-string p0, "text/css"

    return-object p0

    :pswitch_6
    const-string p0, "application/x-javascript"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic b(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const-string p0, "html"

    return-object p0

    :pswitch_1
    const-string p0, "htm"

    return-object p0

    :pswitch_2
    const-string p0, "gif"

    return-object p0

    :pswitch_3
    const-string p0, "webp"

    return-object p0

    :pswitch_4
    const-string p0, "png"

    return-object p0

    :pswitch_5
    const-string p0, "jpep"

    return-object p0

    :pswitch_6
    const-string p0, "jpg"

    return-object p0

    :pswitch_7
    const-string p0, "css"

    return-object p0

    :pswitch_8
    const-string p0, "js"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
