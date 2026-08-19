.class public Lcom/ubix/ssp/open/AdSize;
.super Ljava/lang/Object;


# static fields
.field public static final AUTO_HEIGHT:I = -0x2

.field public static final AUTO_WIDTH:I = -0x1


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ubix/ssp/open/AdSize;->width:I

    iput p2, p0, Lcom/ubix/ssp/open/AdSize;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/AdSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/AdSize;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/open/AdSize;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/open/AdSize;->width:I

    return-void
.end method
