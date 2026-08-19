.class final Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static f(Landroid/os/Parcel;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static fd(I)[Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;
    .locals 0

    .line 1
    new-array p0, p0, [Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b$1;->f(Landroid/os/Parcel;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b$1;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b$1;->fd(I)[Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
