use anyhow::{bail, Result};
use marzano_util::{
    diff::{parse_modified_ranges, FileDiff},
    position::{FileRange, Position, RangeWithoutByte, UtilRange},
};
use regex::Regex;
use serde::Serialize;
pub fn run_git_diff(path: &PathBuf) -> Result<String> {
pub fn extract_modified_ranges(diff_path: &PathBuf) -> Result<Vec<FileDiff>> {
pub(crate) fn extract_target_ranges(
    arg: &Option<Option<PathBuf>>,
) -> Result<Option<Vec<FileRange>>> {
    let raw_diff = if let Some(Some(diff_path)) = &arg {
        extract_modified_ranges(diff_path)?
    } else if let Some(None) = &arg {
        let diff = run_git_diff(&std::env::current_dir()?)?;
        parse_modified_ranges(&diff)?
    } else {
        return Ok(None);
    Ok(Some(
        raw_diff
            .into_iter()
            .flat_map(|diff| {
                let new_path = diff.new_path.as_ref().unwrap().clone();
                diff.after.into_iter().map(move |range| FileRange {
                    range,
                    file_path: new_path.clone(),
                })
            })
            .collect(),
    ))