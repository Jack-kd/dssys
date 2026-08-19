.class Lcom/sigmob/sdk/nativead/ae$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/nativead/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sigmob/sdk/nativead/ae;",
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
.method public a(Landroid/os/Parcel;)Lcom/sigmob/sdk/nativead/ae;
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/nativead/ae;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/nativead/ae;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/sigmob/sdk/nativead/ae;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/sigmob/sdk/nativead/ae;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/nativead/ae$1;->a(Landroid/os/Parcel;)Lcom/sigmob/sdk/nativead/ae;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/nativead/ae$1;->a(I)[Lcom/sigmob/sdk/nativead/ae;

    move-result-object p1

    return-object p1
.end method
