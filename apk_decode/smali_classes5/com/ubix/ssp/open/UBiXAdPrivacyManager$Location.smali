.class public Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/open/UBiXAdPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;->a:D

    iput-wide p3, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;->b:D

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;)D
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;->a:D

    return-wide v0
.end method

.method public static synthetic b(Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;)D
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;->b:D

    return-wide v0
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;->b:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;->a:D

    return-wide v0
.end method
