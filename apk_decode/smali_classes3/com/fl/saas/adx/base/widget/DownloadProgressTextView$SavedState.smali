.class public Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentText:Ljava/lang/String;

.field private progress:I

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState$1;

    invoke-direct {v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState$1;-><init>()V

    sput-object v0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->progress:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->currentText:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->progress:I

    iput p3, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->state:I

    iput-object p4, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->currentText:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->state:I

    return p0
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->progress:I

    return p0
.end method

.method public static synthetic access$600(Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->currentText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView$SavedState;->currentText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
