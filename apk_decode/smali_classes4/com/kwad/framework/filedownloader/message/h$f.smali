.class public Lcom/kwad/framework/filedownloader/message/h$f;
.super Lcom/kwad/framework/filedownloader/message/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/message/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final aCH:I

.field private final aCI:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/message/h;-><init>(I)V

    .line 3
    iput p2, p0, Lcom/kwad/framework/filedownloader/message/h$f;->aCI:I

    .line 4
    iput p3, p0, Lcom/kwad/framework/filedownloader/message/h$f;->aCH:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/message/h;-><init>(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kwad/framework/filedownloader/message/h$f;->aCI:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/kwad/framework/filedownloader/message/h$f;->aCH:I

    return-void
.end method

.method public constructor <init>(Lcom/kwad/framework/filedownloader/message/h$f;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/h$f;->CK()I

    move-result v1

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/h$f;->CL()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/kwad/framework/filedownloader/message/h$f;-><init>(III)V

    return-void
.end method


# virtual methods
.method public AH()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final CK()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/message/h$f;->aCI:I

    .line 2
    .line 3
    return v0
.end method

.method public final CL()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/message/h$f;->aCH:I

    .line 2
    .line 3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/kwad/framework/filedownloader/message/h$f;->aCI:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lcom/kwad/framework/filedownloader/message/h$f;->aCH:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
