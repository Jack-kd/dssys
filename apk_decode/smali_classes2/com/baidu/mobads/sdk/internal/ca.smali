.class Lcom/baidu/mobads/sdk/internal/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mobads/sdk/internal/bz;",
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
.method public a(Landroid/os/Parcel;)Lcom/baidu/mobads/sdk/internal/bz;
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/internal/bz;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/baidu/mobads/sdk/internal/bz;-><init>(Landroid/os/Parcel;Lcom/baidu/mobads/sdk/internal/ca;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mobads/sdk/internal/bz;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/baidu/mobads/sdk/internal/bz;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/baidu/mobads/sdk/internal/ca;->a(Landroid/os/Parcel;)Lcom/baidu/mobads/sdk/internal/bz;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/baidu/mobads/sdk/internal/ca;->a(I)[Lcom/baidu/mobads/sdk/internal/bz;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
