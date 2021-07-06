.class public final Landroid/support/v4/print/PrintHelper;
.super Ljava/lang/Object;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelper$PrintUriAdapter;,
        Landroid/support/v4/print/PrintHelper$PrintBitmapAdapter;,
        Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final COLOR_MODE_MONOCHROME:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field static final IS_MIN_MARGINS_HANDLING_CORRECT:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelper"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field static final PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    const/16 v4, 0x14

    if-lt v0, v4, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    sput-boolean v0, Landroid/support/v4/print/PrintHelper;->PRINT_ACTIVITY_RESPECTS_ORIENTATION:Z

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v3, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    sput-boolean v1, Landroid/support/v4/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 143
    iput v0, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    .line 144
    iput v0, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    const/4 v0, 0x1

    .line 145
    iput v0, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    .line 163
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    return-object p0

    .line 820
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 822
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 823
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 824
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v3, 0x0

    .line 825
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 826
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 827
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 828
    invoke-virtual {v0, p0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    .line 829
    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method private static copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .registers 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 558
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 559
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 561
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 563
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 564
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 567
    :cond_2a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3d

    .line 568
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v1

    if-eqz v1, :cond_3d

    .line 569
    invoke-virtual {p0}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    :cond_3d
    return-object v0
.end method

.method static getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 7

    .line 589
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 592
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_19

    .line 594
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p3

    int-to-float v2, p1

    div-float/2addr p3, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    goto :goto_23

    .line 596
    :cond_19
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p3

    int-to-float v2, p1

    div-float/2addr p3, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 598
    :goto_23
    invoke-virtual {v0, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 601
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float p0, p0, p3

    sub-float/2addr v1, p0

    const/high16 p0, 0x40000000  # 2.0f

    div-float/2addr v1, p0

    .line 603
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    int-to-float p1, p1

    mul-float p1, p1, p3

    sub-float/2addr p2, p1

    div-float/2addr p2, p0

    .line 605
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method static isPortrait(Landroid/graphics/Bitmap;)Z
    .registers 2

    .line 546
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-gt v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5

    if-eqz p1, :cond_38

    .line 796
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    goto :goto_38

    :cond_7
    const/4 v0, 0x0

    .line 801
    :try_start_8
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_28

    .line 802
    :try_start_12
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_25

    if-eqz p1, :cond_24

    .line 806
    :try_start_18
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p1

    const-string v0, "PrintHelper"

    const-string v1, "close fail "

    .line 808
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    :goto_24
    return-object p2

    :catchall_25
    move-exception p2

    move-object v0, p1

    goto :goto_29

    :catchall_28
    move-exception p2

    :goto_29
    if-eqz v0, :cond_37

    .line 806
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception p1

    const-string v0, "PrintHelper"

    const-string v1, "close fail "

    .line 808
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    :cond_37
    :goto_37
    throw p2

    .line 797
    :cond_38
    :goto_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad argument to loadBitmap"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static systemSupportsPrint()Z
    .registers 2

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .registers 3

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    .line 235
    :cond_c
    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .line 187
    iget v0, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    return v0
.end method

.method loadConstrainedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 9

    if-eqz p1, :cond_67

    .line 746
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    goto :goto_67

    .line 750
    :cond_7
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 751
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 752
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 754
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 755
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v3, 0x0

    if-lez v2, :cond_66

    if-gtz v0, :cond_1c

    goto :goto_66

    .line 763
    :cond_1c
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    :goto_21
    const/16 v6, 0xdac

    if-le v4, v6, :cond_2a

    ushr-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_2a
    if-lez v5, :cond_65

    .line 772
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/2addr v0, v5

    if-gtz v0, :cond_34

    goto :goto_65

    .line 776
    :cond_34
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_37
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 778
    iget-object v2, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 779
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 780
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 781
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_62

    .line 783
    :try_start_49
    invoke-direct {p0, p1, v1}, Landroid/support/v4/print/PrintHelper;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_57

    .line 785
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_50
    iput-object v3, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 787
    monitor-exit v0

    return-object p1

    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_54

    throw p1

    :catchall_57
    move-exception p1

    .line 785
    iget-object v1, p0, Landroid/support/v4/print/PrintHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_5b
    iput-object v3, p0, Landroid/support/v4/print/PrintHelper;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 787
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    throw p1

    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1

    :catchall_62
    move-exception p1

    .line 781
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p1

    :cond_65
    :goto_65
    return-object v3

    :cond_66
    :goto_66
    return-object v3

    .line 747
    :cond_67
    :goto_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad argument to getScaledBitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 13
    .param p1  # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_41

    if-nez p2, :cond_9

    goto :goto_41

    .line 262
    :cond_9
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    const-string v1, "print"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 265
    invoke-static {p2}, Landroid/support/v4/print/PrintHelper;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 266
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    goto :goto_1e

    .line 268
    :cond_1c
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    .line 270
    :goto_1e
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 271
    invoke-virtual {v2, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    .line 272
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v1

    .line 275
    new-instance v8, Landroid/support/v4/print/PrintHelper$PrintBitmapAdapter;

    iget v5, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/print/PrintHelper$PrintBitmapAdapter;-><init>(Landroid/support/v4/print/PrintHelper;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    invoke-virtual {v0, p1, v8, v1}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void

    :cond_41
    :goto_41
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 12
    .param p1  # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_7

    return-void

    .line 360
    :cond_7
    new-instance v0, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;

    iget v7, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/print/PrintHelper$PrintUriAdapter;-><init>(Landroid/support/v4/print/PrintHelper;Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;I)V

    .line 363
    iget-object p2, p0, Landroid/support/v4/print/PrintHelper;->mContext:Landroid/content/Context;

    const-string p3, "print"

    .line 364
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/print/PrintManager;

    .line 365
    new-instance p3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {p3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 366
    iget v1, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    invoke-virtual {p3, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 368
    iget v1, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3c

    iget v1, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    if-nez v1, :cond_31

    goto :goto_3c

    .line 370
    :cond_31
    iget v1, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 371
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p3, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_41

    .line 369
    :cond_3c
    :goto_3c
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {p3, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 373
    :cond_41
    :goto_41
    invoke-virtual {p3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object p3

    .line 375
    invoke-virtual {p2, p1, v0, p3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void
.end method

.method public setColorMode(I)V
    .registers 2

    .line 199
    iput p1, p0, Landroid/support/v4/print/PrintHelper;->mColorMode:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 221
    iput p1, p0, Landroid/support/v4/print/PrintHelper;->mOrientation:I

    return-void
.end method

.method public setScaleMode(I)V
    .registers 2

    .line 176
    iput p1, p0, Landroid/support/v4/print/PrintHelper;->mScaleMode:I

    return-void
.end method

.method writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 18
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 626
    sget-boolean v0, Landroid/support/v4/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v5, p1

    goto :goto_19

    .line 631
    :cond_7
    invoke-static {p1}, Landroid/support/v4/print/PrintHelper;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    new-instance v2, Landroid/print/PrintAttributes$Margins;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 632
    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v0

    move-object v5, v0

    .line 635
    :goto_19
    new-instance v0, Landroid/support/v4/print/PrintHelper$1;

    move-object v2, v0

    move-object v3, p0

    move-object/from16 v4, p5

    move-object v6, p3

    move-object v7, p1

    move v8, p2

    move-object v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroid/support/v4/print/PrintHelper$1;-><init>(Landroid/support/v4/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 734
    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
