.class public Lcom/ubix/ssp/ad/d/b;
.super Ljava/lang/Object;


# static fields
.field public static A:I = 0x0

.field public static B:Z = false

.field public static C:I = 0x0

.field public static D:I = 0x0

.field public static E:I = 0x0

.field public static F:I = 0x0

.field public static G:I = 0x0

.field public static H:I = 0x0

.field public static I:I = 0x0

.field public static volatile J:Z = false

.field public static K:I = 0x0

.field public static L:I = 0x0

.field public static a:Lcom/ubix/ssp/open/UBiXAdSetting; = null

.field public static b:Z = false

.field public static c:Z = false

.field public static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile e:Ljava/lang/String;

.field public static volatile f:Ljava/lang/String;

.field public static volatile g:J

.field public static volatile h:I

.field public static i:I

.field public static j:[Ljava/lang/String;

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:J

.field public static o:J

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:I

.field public static s:J

.field public static t:I

.field public static u:Z

.field public static v:Z

.field public static w:Z

.field public static x:I

.field public static y:I

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/d/b;->d:Ljava/util/ArrayList;

    const-string v0, ""

    sput-object v0, Lcom/ubix/ssp/ad/d/b;->e:Ljava/lang/String;

    sput-object v0, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/ubix/ssp/ad/d/b;->g:J

    const/4 v3, 0x0

    sput v3, Lcom/ubix/ssp/ad/d/b;->h:I

    const/4 v4, 0x1

    sput v4, Lcom/ubix/ssp/ad/d/b;->i:I

    new-array v5, v3, [Ljava/lang/String;

    sput-object v5, Lcom/ubix/ssp/ad/d/b;->j:[Ljava/lang/String;

    sput-boolean v3, Lcom/ubix/ssp/ad/d/b;->k:Z

    sput-boolean v3, Lcom/ubix/ssp/ad/d/b;->l:Z

    sput-boolean v4, Lcom/ubix/ssp/ad/d/b;->m:Z

    sput-wide v1, Lcom/ubix/ssp/ad/d/b;->n:J

    const-wide v1, 0x9a7ec800L

    sput-wide v1, Lcom/ubix/ssp/ad/d/b;->o:J

    sput-object v0, Lcom/ubix/ssp/ad/d/b;->p:Ljava/lang/String;

    sput-object v0, Lcom/ubix/ssp/ad/d/b;->q:Ljava/lang/String;

    sput v4, Lcom/ubix/ssp/ad/d/b;->r:I

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/ubix/ssp/ad/d/b;->s:J

    const/16 v0, 0x14

    sput v0, Lcom/ubix/ssp/ad/d/b;->t:I

    sput-boolean v4, Lcom/ubix/ssp/ad/d/b;->u:Z

    sput-boolean v3, Lcom/ubix/ssp/ad/d/b;->v:Z

    sput-boolean v3, Lcom/ubix/ssp/ad/d/b;->w:Z

    sput v3, Lcom/ubix/ssp/ad/d/b;->x:I

    sput v3, Lcom/ubix/ssp/ad/d/b;->y:I

    sput-boolean v3, Lcom/ubix/ssp/ad/d/b;->z:Z

    const/16 v0, 0xa

    sput v0, Lcom/ubix/ssp/ad/d/b;->A:I

    sput-boolean v3, Lcom/ubix/ssp/ad/d/b;->B:Z

    const/4 v0, 0x2

    sput v0, Lcom/ubix/ssp/ad/d/b;->C:I

    sput v3, Lcom/ubix/ssp/ad/d/b;->D:I

    sput v3, Lcom/ubix/ssp/ad/d/b;->E:I

    sput v4, Lcom/ubix/ssp/ad/d/b;->F:I

    sput v3, Lcom/ubix/ssp/ad/d/b;->G:I

    const v1, 0x5265c00

    sput v1, Lcom/ubix/ssp/ad/d/b;->H:I

    const v1, 0xf731400

    sput v1, Lcom/ubix/ssp/ad/d/b;->I:I

    sput-boolean v4, Lcom/ubix/ssp/ad/d/b;->J:Z

    const/16 v1, 0xf

    sput v1, Lcom/ubix/ssp/ad/d/b;->K:I

    sput v0, Lcom/ubix/ssp/ad/d/b;->L:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    return-object v0
.end method
