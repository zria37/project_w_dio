<?php
defined('BASEPATH') or exit('No direct script access allowed');


// -----------------------------------------------------------------------------------------------


if ( ! function_exists('must_login'))
{
  /**
  * must login or throw away
  *
  * @param string custom destination location
  * @param string session login status key name
  * @param string session login status value
  * @return location go to $location
  */
  function must_login($location = 'auth/login', $key = 'isLogin', $val = 1)
  {
    $ci=&get_instance();
    if ( ! $ci->session->userdata($key) == $val)
    {
      redirect(base_url($location), 'refresh');
    }
  }
}

if ( ! function_exists('must_not_login'))
{
  /**
  * not login or throw away
  *
  * @param string custom destination location
  * @param string session login status key name
  * @param string session login status value
  * @return location go to $location
  */
  function must_not_login($location = '', $key = 'isLogin', $val = 1)
  {
    $ci=&get_instance();
    if ( $ci->session->userdata($key) == $val)
    {
      redirect(base_url($location), 'refresh');
    }
  }
}

if ( ! function_exists('role_validation'))
{
  /**
  * What is the role of the user, and search in array stack
  * who are allowed to access something. Return 1 or show error page
  *
  * @param string user role name
  * @param array allowed role
  */
  function role_validation($role = '3', $hasAccess = [])
  {
    array_push($hasAccess, '0'); // '0' is for superadmin
    
    // jika tidak ada, maka tidak cocok dan buang keluar
    if ( ! in_array($role, $hasAccess)) 
    {
      // redirect(base_url(), 'refresh');
      show_error('Anda tidak memiliki hak akses untuk menuju ke halaman ini. Silakan gunakan akun yang sesuai.', 401, '401 - Hak Akses Ditolak');
    }
    return 1;
  }
}

if ( ! function_exists('role_access'))
{
  /**
  * What is the role of the user, and search in array stack
  * who are allowed to access menu. Return 1 or 0
  *
  * @param string user role name
  * @param array allowed role
  */
  function role_access($role = '3', $hasAccess = [])
  {
    array_push($hasAccess, '0'); // '0' is for superadmin
    
    // jika tidak ada, maka tidak cocok dan buang keluar
    if ( ! in_array($role, $hasAccess)) 
    {
      return 0;
    }
    return 1;
  }
}


// -----------------------------------------------------------------------------------------------


if ( ! function_exists('getBeforeLastSegment'))
{
  /**
  * Get segment for redirecting
  *
  * @param string pre segment for building full uri
  * @param int backward number sequence of the segment you want to use
  * @return string segment name
  */
  function getBeforeLastSegment($url = '', $n = 1)
  {
    if ($url !== '')
    {
      $url = $url . '/';
    }
    $ci=&get_instance();
    $i = $ci->uri->total_segments() - $n;
    $uri = $url . $ci->uri->segment($i, 0);
    return $uri;
  }
}

if ( ! function_exists('getLastSegment'))
{
  /**
  * Get segment for redirecting
  *
  * @param string pre segment for building full uri
  * @param int backward number sequence of the segment you want to use
  * @return string segment name
  */
  function getLastSegment()
  {
    $ci=&get_instance();
    $last = $ci->uri->total_segments();
    return $ci->uri->segment($last);
  }
}


// -----------------------------------------------------------------------------------------------


if ( ! function_exists('pprint'))
{
	/**
	 * <Pre> print_r($str); </pre>
	 *
	 * @param	string	String/Array/Object
	*/
  function pprint($str){
    echo "<pre>"; print_r($str); echo "</pre>";
  }
}

if ( ! function_exists('pprintd'))
{
	/**
	 * <Pre> print_r($str); die;
	 *
	 * @param	string	String/Array/Object
	*/
  function pprintd($str){
    echo "<pre>"; print_r($str); die;
  }
}

if ( ! function_exists('price_format'))
{
	/**
	 * Format number to Rp. xxxxx price format
	 *
	 * @param	int	Integer of the pre-formatted price
	*/
  function price_format($int, $nbsp = TRUE, $echo = NULL)
  {
    if ($nbsp === TRUE) $x  = "Rp.&nbsp;".number_format($int, 0, '', '.');
    if ($nbsp === FALSE) $x = "Rp.".number_format($int, 0, '', '.');

    if ($echo === NULL) echo $x;
    if ($echo !== NULL) return $x;
  }
}


// ------------------------------------------------------------------------


if ( ! function_exists('start_time'))
{
	/**
	 * Start timestamp for benchmarking time (microtime(TRUE))
	 *
	 * @param	int	Integer of the timestamp
	*/
  function start_time($timestamp = 0, $sessName = NULL)
  {
    if ($timestamp == 0) $timestamp = now();
    $ci=&get_instance();
    
    $startTime = round($timestamp * 1000);
    if ($sessName === NULL) $ci->session->set_userdata('benchmark_start_time', $startTime);
    else $ci->session->set_userdata("benchmark_{$sessName}", $startTime);
  }
}

if ( ! function_exists('end_time'))
{
	/**
	 * End timestamp for benchmarking time (microtime(TRUE))
	 *
	 * @param	int	Integer of the timestamp
	*/
  function end_time($sessName = NULL, $timeType = 'ms')
  {
    $ci=&get_instance();
    if ($sessName === NULL) $startTime = $ci->session->userdata('benchmark_start_time');
    else $startTime = $ci->session->userdata("benchmark_{$sessName}");

    if ($sessName === NULL) $name = 'benchmark_start_time';
    else $name = "benchmark_{$sessName}";
    
    
    if ($timeType == 'ms') {
      $timeType = 'miliseconds';
      $endTime     = round(microtime(true) * 1000);
      $elapsedTime = ($endTime - $startTime);
    }
    else {
      $timeType = 'seconds';
      $endTime     = round(microtime(true) * 1000);
      $elapsedTime = ($endTime - $startTime) / 100;
    }

    echo '<script>';
    echo "console.log(`{$name}: Elapsed time: {$elapsedTime} {$timeType}`);";
    echo '</script>';

    if ($sessName === NULL) $ci->session->unset_userdata('benchmark_start_time');
    else $ci->session->unset_userdata("benchmark_{$sessName}");
  }
}


// ------------------------------------------------------------------------


// gajadi dipake 
// 13 01 2021
if ( ! function_exists('unique_multidim_array'))
{
	/**
  * Create multidimensional array unique for any single key index.
  * e.g I want to create multi dimentional unique array for specific code
  *
  * $details = array(
  *    0 => array("id"=>"1", "name"=>"Mike",    "num"=>"9876543210"),
  *    1 => array("id"=>"2", "name"=>"Carissa", "num"=>"08548596258"),
  *    2 => array("id"=>"1", "name"=>"Mathew",  "num"=>"784581254"),
  * )
  *
  * @param	array	Input array
  * @param string array key to be searched
  * 
	*/
  function unique_multidim_array($array, $key) 
  {
    $temp_array = array();
    $i = 0;
    $key_array = array();
   
    foreach($array as $val) {
        if (!in_array($val[$key], $key_array)) {
            $key_array[$i] = $val[$key];
            $temp_array[$i] = $val;
        }
        $i++;
    }
    return $temp_array;
  }
}


// -----------------------------------------------------------------------------------------------


if ( ! function_exists('slug_prep'))
{
	/**
	 * need url_title() from the codeigniter helpers
	 *
	 * @param	string	$str input string
	 * @param	string	$separator separator character
	 * @param	boolean	$lowercase should be lower case or not
	 * @param	boolean	$isHyphen should replace '_' with '-'
	*/
  function slug_prep($str, $separator = '-', $lowercase = TRUE, $isHyphen = TRUE)
  {
    $res = url_title($str, $separator, $lowercase);
    if ($isHyphen == TRUE) {
      $res = str_replace('_', '-', $res);
    }
    return $res;
  }
}




// dipakai di update inventory produk, rencanya cuma buat next projek
// ------------------------------------------------------------------------

if ( ! function_exists('set_swal'))
{
	/**
	 * Set flashdata session for calling sweetalert popup
	 *
	 * @param	array	$swal Berisi 3 array yang masing2 adalah string ; ['success/failed', 'title', 'text']
	*/
  function set_swal($swal)
  {
    $ci=&get_instance();

    switch ($swal[0]) {
      case 'success':
        $ci->session->set_flashdata('success_message', 1);
        break;

      case 'failed':
        $ci->session->set_flashdata('failed_message', 1);
        break;

      case ('confirmation' || 'conf'):
        $ci->session->set_flashdata('confirmation_message', 1);
        break;

      default:
        return;
        break;
    }
    $ci->session->set_flashdata('title', $swal[1]);
    $ci->session->set_flashdata('text', $swal[2]);
  }

  // ? contoh penggunaan
  // $swal = ['success', 'Judul dari sweetalert', 'Kalo ini kontennya dari sweetalert'];
  // set_swal($swal);
}


?>
