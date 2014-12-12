<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Analytical Imaging Portal for Pathology</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/ion.rangeSlider.css" />
    <link rel="stylesheet" href="css/ion.rangeSlider.skinModern.css" />
    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

	<link href="theme.css" rel="stylesheet">
	<script>
			function myfunction() {
				window.open("./features.html");
			}
		</script>
		<style type="text/css">
			body {
			    background-image: url(http://upload.wikimedia.org/wikipedia/commons/5/56/Macs_killing_cancer_cell.jpg);
background-size:100% auto;
		    }
				   </style>
</head>
<body>
    <div class="navbar navbar-fixed-top header">
        <div class="col-md-12">
            <div class="navbar-header" style="float:right">
		    <a href="#" class="navbar-brand"><h2>Analytical Imaging Portal for Pathology</h2></a>
            </div>
        </div>
    </div>
    <!--main-->
    <div class="container" id="main">
        <!--form class="form col-md-12 center-block" id="myOneForm" action="test.php" method="get"-->
        <form class="form col-md-12 center-block" id="myOneForm" action="QueryServlet" method="POST">
            <div class="row">
                <div class="col-md-4 col-sm-6">

                    <div class="panel panel-default panel-mine">

                        <button class="btn btn-success btn-mine" type="submit">Submit Query</button>
						<!-- >button class="btn btn-success btn-mine"  onclick="myfunction()">Feature Summary</button-->
                    </div>


                    <div class="well mine-padding-no">
                        <div class="panel-heading">
                            <!--h4>Geometric Features</h4-->
                            <h4 data-toggle="collapse" data-parent="#accordion" style="border-color:#4cdef9" href="#collapse-gm"> Geometric Features </h4>
                        </div>
                        <!--div class="accordion-toggle" style="display:block"></div>
                                        </div-->
                        <div id="collapse-gm" class="panel-collapse collapse">
                            <div class="panel-body" style="padding-top:0px">

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Area of the Cell">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-gm-1">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="Area">Area</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-gm-1" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" id="gm-1" name="Area" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Perimeter of the Cell">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-gm-2">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="Perimeter">Perimeter</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-gm-2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="Perimeter" id="gm-2" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Eccentricity of the Cell">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-gm-3">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="Eccentricity">Eccentricity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-gm-3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="Eccentricity" id="gm-3" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Circularity of the Cell">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-gm-4">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="Circularity">Circularity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-gm-4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="Circularity" id="gm-4" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Major Axis Length of the Cell">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-gm-5">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="MajorAxisLength">Major Axis Length</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-gm-5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="MajorAxisLength" id="gm-5" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Minor Axis Length of the Cell">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-gm-6">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="MinorAxisLength">Minor Axis Length</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-gm-6" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="MinorAxisLength" id="gm-6" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Solidity of the Cell">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-gm-7">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="Solidity">Solidity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-gm-7" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="Solidity" id="gm-7" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Extent of the Cell">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-gm-8">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="Extent">Extent</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-gm-8" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="Extent" id="gm-8" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <!--h4>Geometric Features</h4-->
                            <h4 data-toggle="collapse" data-parent="#accordion" style="border-color:#4cdef9" href="#collapse-fsd"> Focus Skin Distance</h4>
                        </div>
                        <!--div class="accordion-toggle" style="display:block"></div>
                                        </div-->
                        <div id="collapse-fsd" class="panel-collapse collapse">
                            <div class="panel-body" style="padding-top:0px">

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Focus to Surface Distance 1">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-fsd-1">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="FSD1">FSD 1</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-fsd-1" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="FSD1" id="fsd-1" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Focus to Surface Distance 2">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-fsd-2">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="FSD2">FSD 2</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-fsd-2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="FSD2" id="fsd-2" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Focus to Surface Distance 3">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-fsd-3">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="FSD3">FSD 3</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-fsd-3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="FSD3" id="fsd-3" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Focus to Surface Distance 4">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-fsd-4">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="FSD4">FSD 4</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-fsd-4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="FSD4" id="fsd-4" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Focus to Surface Distance 5">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-fsd-5">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="FSD5">FSD 5</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-fsd-5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="FSD5" id="fsd-5" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Focus to Surface Distance 6">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-fsd-6">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="FSD6">FSD 6</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-fsd-6" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="FSD6" id="fsd-6" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="well mine-padding-no">
                        <div class="panel-heading">
                            <!--h4>Geometric Features</h4-->
                            <h4 data-toggle="collapse" data-parent="#accordion" style="border-color:#4cdef9" href="#collapse-hi"> Hematoxlyin Intensities</h4>
                        </div>
                        <!--div class="accordion-toggle" style="display:block"></div>
                                        </div-->
                        <div id="collapse-hi" class="panel-collapse collapse">
                            <div class="panel-body" style="padding-top:0px">

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Mean of Hematoxlyin Intensities">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hi-1">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinMeanIntensity">Mean Intensity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hi-1" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinMeanIntensity" id="hi-1" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Mean Median Difference of Hematoxlyin Intensities">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hi-2">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinMeanMedianDifferenceIntensity">Mean Median Difference Intensity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hi-2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinMeanMedianDifferenceIntensity" id="hi-2" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Maximum of Hematoxlyin Intensities">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hi-3">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinMaxIntensity">Maximum Intensity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hi-3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinMaxIntensity" id="hi-3" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Minimum of Hematoxlyin Intensities">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hi-4">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinMinIntensity">Minimum Intensity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hi-4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinMinIntensity" id="hi-4" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Standard Hematoxlyin Intensities">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hi-5">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinStdIntensity">Standard Intensity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hi-5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinStdIntensity" id="hi-5" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>



                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <!--h4>Geometric Features</h4-->
                            <h4 data-toggle="collapse" data-parent="#accordion" style="border-color:#4cdef9" href="#collapse-hgm"> Hematoxlyin Gradient magnitudes</h4>
                        </div>
                        <!--div class="accordion-toggle" style="display:block"></div>
                                        </div-->
                        <div id="collapse-hgm" class="panel-collapse collapse">
                            <div class="panel-body" style="padding-top:0px">


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Mean of Hematoxlyin Gradient Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hgm-1">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinMeanGradMag">Mean Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hgm-1" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinMeanGradMag" id="hgm-1" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Standard Hematoxlyin Gradient Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hgm-2">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinStdGradMag">Standard Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hgm-2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinStdGradMag" id="hgm-2" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Entropy of Hematoxlyin Gradient Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hgm-3">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinEntropyGradMag">Entropy Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hgm-3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinEntropyGradMag" id="hgm-3" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Hematoxlyin Energy Gradient  Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hgm-4">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinEnergyGradMag">Energy Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hgm-4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinEnergyGradMag" id="hgm-4" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Hematoxlyin Skewness Gradient  Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hgm-5">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinSkewnessGradMag">Skewness Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hgm-5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinSkewnessGradMag" id="hgm-5" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Hematoxlyin Kurtosis Gradient  Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hgm-6">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinKurtosisGradMag">Kurtosis Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hgm-6" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinKurtosisGradMag" id="hgm-6" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                    <div class="well mine-padding-no">
                        <div class="panel-heading">
                            <!--h4>Geometric Features</h4-->
                            <h4 data-toggle="collapse" data-parent="#accordion" style="border-color:#4cdef9" href="#collapse-hof"> Hematoxlyin Other Features</h4>
                        </div>
                        <!--div class="accordion-toggle" style="display:block"></div>
                                        </div-->
                        <div id="collapse-hof" class="panel-collapse collapse">
                            <div class="panel-body" style="padding-top:0px">


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Hematoxlyin Entropy">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hof-1">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinEntropy">Entropy</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hof-1" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinEntropy" id="hof-1" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Hematoxlyin Energy">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hof-2">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinEnergy">Energy</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hof-2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinEnergy" id="hof-2" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Hematoxlyin Skewness">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hof-3">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinSkewness">Skewness</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hof-3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinSkewness" id="hof-3" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Hematoxlyin Kurtosis">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hof-4">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinKurtosis">Kurtosis</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hof-4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinKurtosis" id="hof-4" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Hematoxlyin Canny Detector Sum">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hof-5">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinSumCanny">Sum Canny</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hof-5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinSumCanny" id="hof-5" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Hematoxlyin Canny Detector Mean">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-hof-6">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="HematoxlyinMeanCanny">Mean Canny</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-hof-6" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="HematoxlyinMeanCanny" id="hof-6" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <!--h4>Geometric Features</h4-->
                            <h4 data-toggle="collapse" data-parent="#accordion" style="border-color:#4cdef9" href="#collapse-ci"> Cytoplasm Intensities</h4>
                        </div>
                        <!--div class="accordion-toggle" style="display:block"></div>
                                        </div-->
                        <div id="collapse-ci" class="panel-collapse collapse">
                            <div class="panel-body" style="padding-top:0px">


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Mean of Cytoplasm Intensities">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-ci-1">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmMeanIntensity">Mean Intensity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-ci-1" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmMeanIntensity" id="ci-1" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Mean Difference of Cytoplasm Intensities">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-ci-2">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmMeanMedianDifferenceIntensity">Mean Median Difference Intensity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-ci-2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmMeanMedianDifferenceIntensity" id="ci-2" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Maximum of Cytoplasm Intensities">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-ci-3">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmMaxIntensity">Maximum Intensity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-ci-3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmMaxIntensity" id="ci-3" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Minimum of Cytoplasm Intensities">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-ci-4">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmMinIntensity">Minimum Intensity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-ci-4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmMinIntensity" id="ci-4" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Standard Cytoplasm Intensity">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-ci-5">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmStdIntensity">Standard Intensity</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-ci-5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmStdIntensity" id="ci-5" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>




                            </div>
                        </div>
                    </div>
                    <div class="well mine-padding-no">
                        <div class="panel-heading">
                            <!--h4>Geometric Features</h4-->
                            <h4 data-toggle="collapse" data-parent="#accordion" style="border-color:#4cdef9" href="#collapse-cgm"> Cytoplasm Gradient Magnitudes</h4>
                        </div>
                        <!--div class="accordion-toggle" style="display:block"></div>
                                        </div-->
                        <div id="collapse-cgm" class="panel-collapse collapse">
                            <div class="panel-body" style="padding-top:0px">

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Mean of Cytoplasm Gradient Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cgm-1">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmMeanGradMag">Mean Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cgm-1" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmMeanGradMag" id="cgm-1" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Standard Cytoplasm Gradient Magnitude">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cgm-2">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmStdGradMag">Standard Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cgm-2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmStdGradMag" id="cgm-2" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Entropy of Cytoplasm Gradient Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cgm-3">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmEntropyGradMag">Entropy Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cgm-3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmEntropyGradMag" id="cgm-3" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Cytoplasm Energy Gradient Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cgm-4">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmEnergyGradMag">Energy Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cgm-4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmEnergyGradMag" id="cgm-4" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Skewness of Cytoplasm Gradient Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cgm-5">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmSkewnessGradMag">Skewness Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cgm-5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmSkewnessGradMag" id="cgm-5" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Kurtosis of Cytoplasm Gradient Magnitudes">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cgm-6">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmKurtosisGradMag">Kurtosis Gradient Magnitude</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cgm-6" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmKurtosisGradMag" id="cgm-6" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>


                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <!--h4>Geometric Features</h4-->
                            <h4 data-toggle="collapse" data-parent="#accordion" style="border-color:#4cdef9" href="#collapse-cof"> Cytoplasm Other Features</h4>
                        </div>
                        <!--div class="accordion-toggle" style="display:block"></div>
                                        </div-->
                        <div id="collapse-cof" class="panel-collapse collapse">
                            <div class="panel-body" style="padding-top:0px">



                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Cytoplasm Entropy">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cof-1">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmEntropy">Entropy</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cof-1" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmEntropy" id="cof-1" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Cytoplasm Energy">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cof-2">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmEnergy">Energy</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cof-2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmEnergy" id="cof-2" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Cytoplasm Skewness">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cof-3">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmSkewness">Skewness</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cof-3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmSkewness" id="cof-3" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Cytoplasm Kurtosis">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cof-4">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmKurtosis">Kurtosis</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cof-4" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmKurtosis" id="cof-4" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Cytoplasm Canny Detector Sum">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cof-5">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmSumCanny">Sum Canny</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cof-5" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmSumCanny" id="cof-5" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <a href="#" title="Cytoplasm Canny Detector Mean">
                                                    <h4 class="panel-title" style="border-bottom-width:0px;padding-bottom:0px;" data-toggle="collapse" data-parent="#accordion" href="#collapse-cof-6">
							<label style="margin-bottom:0px;font-size:14px;font-weight:normal"for="CytoplasmMeanCanny">Mean Canny</label>
					        </h4>
                                                </a>
                                                <div class="accordion-toggle" style="display:block"></div>
                                            </div>
                                            <div id="collapse-cof-6" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <input type="text" name="CytoplasmMeanCanny" id="cof-6" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </form>
        <!--/row-->

    </div>
    <!--/main-->
    <div id="myModal" class="modal fade">
	        <div class="modal-dialog">
			        <div class="modal-content container">
					            <div class="modal-header">
							                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									                    <h4 class="modal-title">Results</h4>
											                </div>
													            <div class="modal-body">
    <div class="container" id="results">
        <table id="example" class="display table-striped table-responsive table-bordered" cellspacing="0" width="90%">
        <!--thead>
            <tr>
                <th>Image</th>
<th>Area</th>
<th>Perimeter</th>
<th>Eccentricity</th>
<th>Circularity</th>
<th>HematoxlyinMeanIntensity</th>
<th>HematoxlyinMaxIntensity</th>
<th>HematoxlyinMinIntensity</th>
<th>HematoxlyinStdIntensity</th>
<th>HematoxlyinEntropy</th>
<th>HematoxlyinEnergy</th>
<th>CytoplasmMeanIntensity</th>
<th>CytoplasmMaxIntensity</th>
<th>CytoplasmMinIntensity</th>
<th>CytoplasmStdIntensity</th>
<th>CytoplasmEntropy</th>
<th>CytoplasmEnergy</th>
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>Image</th>
<th>Area</th>
<th>Perimeter</th>
<th>Eccentricity</th>
<th>Circularity</th>
<th>HematoxlyinMeanIntensity</th>
<th>HematoxlyinMaxIntensity</th>
<th>HematoxlyinMinIntensity</th>
<th>HematoxlyinStdIntensity</th>
<th>HematoxlyinEntropy</th>
<th>HematoxlyinEnergy</th>
<th>CytoplasmMeanIntensity</th>
<th>CytoplasmMaxIntensity</th>
<th>CytoplasmMinIntensity</th>
<th>CytoplasmStdIntensity</th>
<th>CytoplasmEntropy</th>
<th>CytoplasmEnergy</th>
            </tr>
        </tfoot-->
    </table>
    </div>
    <!--div class="modal-footer">
	    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	    <button type="button" class="btn btn-primary">Save changes</button>
    </div-->
								</div>
							</div>
						</div>
    <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type='text/javascript' src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
    <script type='text/javascript' src="js/ion.rangeSlider.js"></script>
    <!--script type='text/javascript' src="js/jquery.dataTables.min.js"></script-->


    <!-- JavaScript jQuery code from Bootply.com editor -->

    <script type='text/javascript'>
        $(document).ready(function() {

            $("#gm-1").ionRangeSlider({
                min: 21,
                max: 993,
                from: 25,
                to: 600,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#gm-2").ionRangeSlider({
                min: 12.736,
                max: 220.889,
                from: 18,
                to: 198,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#gm-3").ionRangeSlider({
                min: 0,
                max: 0.995101,
                from: 0.1,
                to: 0.5,
                type: 'double',
                step: 0.1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#gm-4").ionRangeSlider({
                min: 0.124185,
                max: 1.626908,
                from: 0.5,
                to: 1.2,
                type: 'double',
                step: 0.1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#gm-5").ionRangeSlider({
                min: 5.219013,
                max: 87.353075,
                from: 35,
                to: 65,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#gm-6").ionRangeSlider({
                min: 5.219013,
                max: 87.353075,
                from: 35,
                to: 65,
                to: 4000,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#gm-7").ionRangeSlider({
                min: 5.219013,
                max: 87.353075,
                from: 35,
                to: 65,
                to: 4000,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#gm-8").ionRangeSlider({
                min: 5.219013,
                max: 87.353075,
                from: 35,
                to: 65,
                to: 4000,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#fsd-1").ionRangeSlider({
                min: 0.021112,
                max: 0.849406,
                from: 0.2,
                to: 0.6,
                type: 'double',
                step: 0.1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#fsd-2").ionRangeSlider({
                min: 0.008616,
                max: 0.444678,
                from: 0.1,
                to: 0.3,
                type: 'double',
                step: 0.1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#fsd-3").ionRangeSlider({
                min: 0.008616,
                max: 0.444678,
                from: 0.1,
                to: 0.3,
                type: 'double',
                step: 0.1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#fsd-4").ionRangeSlider({
                min: 0.002167,
                max: 0.262234,
                from: 0.0045,
                to: 0.15,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#fsd-5").ionRangeSlider({
                min: 0.00147,
                max: 0.181638,
                from: 0.0045,
                to: 0.15,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#fsd-6").ionRangeSlider({
                min: 0.001256,
                max: 0.11409,
                from: 0.04,
                to: 0.07,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });



            $("#hi-1").ionRangeSlider({
                min: 52.76,
                max: 255,
                from: 75,
                to: 225,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#hi-2").ionRangeSlider({
                min: -77.275645,
                max: 48.278504,
                from: -50,
                to: 25,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#hi-3").ionRangeSlider({
                min: 120.962807,
                max: 255,
                from: 175,
                to: 200,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#hi-4").ionRangeSlider({
                min: 0,
                max: 255,
                from: 50,
                to: 150,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#hi-5").ionRangeSlider({
                min: 0,
                max: 105.080182,
                from: 25,
                to: 75,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#hof-1").ionRangeSlider({
                min: 0,
                max: 7.190252,
                from: 2,
                to: 5,
                type: 'double',
                step: 0.1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#hof-2").ionRangeSlider({
                min: 0.008269,
                max: 1.0,
                from: 0.2,
                to: 0.5,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#hof-3").ionRangeSlider({
                min: 1.172711,
                max: 35.655239,
                from: 5,
                to: 20,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#hof-4").ionRangeSlider({
                min: 1.172711,
                max: 35.655239,
                from: 5,
                to: 20,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#hof-5").ionRangeSlider({
                min: 0,
                max: 268,
                from: 25,
                to: 75,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#hof-6").ionRangeSlider({
                min: 0,
                max: 0.666677,
                from: 0.1,
                to: 0.3,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });




            $("#hgm-1").ionRangeSlider({
                min: 0,
                max: 100,
                from: 10,
                to: 40,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#hgm-2").ionRangeSlider({
                min: 0,
                max: 60,
                from: 10,
                to: 40,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#hgm-3").ionRangeSlider({
                min: 0,
                max: 6.64,
                from: 1,
                to: 4,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#hgm-4").ionRangeSlider({
                min: 0.0114,
                max: 1,
                from: 0.1,
                to: 0.4,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#hgm-5").ionRangeSlider({
                min: -0.114249,
                max: 9.73,
                from: 0,
                to: 1.4,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#hgm-6").ionRangeSlider({
                min: -0.114249,
                max: 9.73,
                from: 0.1,
                to: 1.3,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });




            $("#ci-1").ionRangeSlider({
                min: 6,
                max: 229,
                from: 10,
                to: 40,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#ci-2").ionRangeSlider({
                min: -44,
                max: 61,
                from: -10,
                to: 40,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#ci-3").ionRangeSlider({
                min: 18,
                max: 255,
                from: 10,
                to: 40,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#ci-4").ionRangeSlider({
                min: 0,
                max: 164,
                from: 10,
                to: 40,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#ci-5").ionRangeSlider({
                min: 3,
                max: 96,
                from: 10,
                to: 40,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });




            $("#cgm-1").ionRangeSlider({
                min: 1,
                max: 36,
                from: 5,
                to: 20,
                type: 'double',
                step: 0.1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#cgm-2").ionRangeSlider({
                min: 1,
                max: 37,
                from: 10,
                to: 20,
                type: 'double',
                step: 0.1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#cgm-4").ionRangeSlider({
                min: 0,
                max: 0.3,
                from: 0.1,
                to: 0.2,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#cgm-5").ionRangeSlider({
                min: -0.1,
                max: 10,
                from: 0,
                to: 4,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#cgm-6").ionRangeSlider({
                min: -0.1,
                max: 10,
                from: 0,
                to: 4,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#cgm-3").ionRangeSlider({
                min: 1,
                max: 37,
                from: 10,
                to: 20,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });



            $("#cof-1").ionRangeSlider({
                min: 3,
                max: 8,
                from: 4,
                to: 6,
                type: 'double',
                step: 0.1,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#cof-2").ionRangeSlider({
                min: 0.04,
                max: 0.14,
                from: 0.07,
                to: 0.09,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#cof-3").ionRangeSlider({
                min: -2.75,
                max: 5,
                from: 1,
                to: 4,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });
            $("#cof-4").ionRangeSlider({
                min: 1,
                max: 36,
                from: 10,
                to: 25,
                type: 'double',
                step: 0.1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#cof-5").ionRangeSlider({
                min: 0,
                max: 486,
                from: 100,
                to: 400,
                type: 'double',
                step: 1,
                prefix: "",
                prettify: true,
                grid: true
            });


            $("#cof-6").ionRangeSlider({
                min: 0,
                max: 4,
                from: 1,
                to: 2,
                type: 'double',
                step: 0.01,
                prefix: "",
                prettify: true,
                grid: true
            });



            //            $('#myOneForm').on('submit', function(e) {
            //			    
            //               e.preventDefault();
            ////              alert($('#myOneForm').serialize());
            //            $.ajax({
            //               type:'POST',
            //              url: 'test.php',
            //             data: $('#myOneForm').serialize(),
            ////            dataType:"text",
            //          success: function(json) {
            ////             alert(json);
            //         }
            //      });


            //          });
           $( document ).tooltip();
            /* toggle layout */
            $('#btnToggle').click(function() {
                if ($(this).hasClass('on')) {
                    $('#main .col-md-6').addClass('col-md-4').removeClass('col-md-6');
                    $(this).removeClass('on');
                } else {
                    $('#main .col-md-4').addClass('col-md-6').removeClass('col-md-4');
                    $(this).addClass('on');
                }
            });

        });
    </script>

</body>

</html>
