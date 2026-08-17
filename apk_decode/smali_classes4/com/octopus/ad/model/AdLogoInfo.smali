.class public Lcom/octopus/ad/model/AdLogoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static TYPE_PIC:I = 0x0

.field public static TYPE_TEXT:I = 0x1


# instance fields
.field adurl:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/octopus/ad/model/AdLogoInfo;->type:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getAdurl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/model/AdLogoInfo;->adurl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/model/AdLogoInfo;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public setAdurl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/model/AdLogoInfo;->adurl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/model/AdLogoInfo;->type:I

    .line 2
    .line 3
    return-void
.end method
